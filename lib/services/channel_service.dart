import 'package:m3u_parser/models/channel.dart';
import 'package:m3u_parser/models/group.dart';
import 'package:m3u_parser/models/subgroup.dart';
import 'package:m3u_parser_nullsafe/m3u_parser_nullsafe.dart';

class ChannelService {
  final String filePath;
  late M3uList channels;

  ChannelService(this.filePath);

  Future<List<Group>> parseFile() async {
    channels = await M3uList.loadFromFile(filePath);
    return _groupChannels(channels);
  }

  List<Group> _groupChannels(M3uList channels) {
    final List<Group> groups = [];
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

      if (groups.where((element) => element.name == groupName).isEmpty) {
        final subGroup = SubGroup(name: subGroupName);
        subGroup.channels.add(channel);
        final group = Group(name: groupName);
        group.subGroups.add(subGroup);
        groups.add(group);
      } else {
        final group = groups.where((g) => g.name == groupName).first;
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
    return groups;
  }
}
