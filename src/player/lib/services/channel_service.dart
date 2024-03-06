import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/channel_list.dart';
import 'package:iptv_player/models/group.dart';
import 'package:iptv_player/models/subgroup.dart';
import 'package:isar/isar.dart';
import 'package:m3u_parser_nullsafe/m3u_parser_nullsafe.dart';
import 'package:path_provider/path_provider.dart';

class ChannelService {
  late M3uList channels;
  static late final Isar _isar;

  static Future<void> initDb() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [ChannelListSchema],
      directory: dir.path,
    );
  }

  Future<void> parseFile(String filePath) async {
    channels = await M3uList.loadFromFile(filePath);
    final channelList = _groupChannels(channels);
    await _isar.writeTxn(() async {
      await _isar.channelLists.clear();
      await _isar.channelLists.put(channelList);
    });
  }

  Future<ChannelList?> getChannels() async {
    return await _isar.channelLists.where().findFirst();
  }

  ChannelList _groupChannels(M3uList channels) {
    final channelList = ChannelList();
    for (var rawChannel in channels.items) {
      final imageUrl = rawChannel.attributes.containsKey('tvg-logo')
          ? rawChannel.attributes['tvg-logo']!
          : '';
      final channel = Channel(
        id: rawChannel.attributes['tvg-id']!,
        link: rawChannel.link,
        imageUrl: imageUrl,
        name: rawChannel.title,
      );
      var groupSplitted = rawChannel.groupTitle.trim().split('|');
      String groupName, subGroupName = '';
      if (groupSplitted.length > 1) {
        groupName = groupSplitted[0].trim();
        subGroupName = groupSplitted[1].trim();
      } else {
        groupName = 'Ungrouped';
        subGroupName = groupSplitted[0].trim();
      }

      if (channelList.groups
          .where((element) => element.name == groupName)
          .isEmpty) {
        final subGroup = SubGroup(name: subGroupName);
        subGroup.channels.add(channel);
        final group = Group(name: groupName);
        group.subGroups.add(subGroup);
        channelList.groups.add(group);
      } else {
        final group =
            channelList.groups.where((g) => g.name == groupName).first;
        if (group.subGroups.where((sg) => sg.name == subGroupName).isEmpty) {
          final subGroup = SubGroup(name: subGroupName);
          subGroup.channels.add(channel);
          group.subGroups.add(subGroup);
        } else {
          final subGroup =
              group.subGroups.where((sg) => sg.name == subGroupName).first;
          subGroup.channels.add(channel);
        }
      }
    }
    return channelList;
  }
}
