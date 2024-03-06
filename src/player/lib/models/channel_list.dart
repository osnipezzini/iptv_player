import 'package:iptv_player/models/channel.dart';
import 'package:iptv_player/models/group.dart';
import 'package:iptv_player/models/subgroup.dart';
import 'package:isar/isar.dart';

part 'channel_list.g.dart';

@collection
class ChannelList {
  Id id = Isar.autoIncrement;
  List<Group> groups = [];
  String? headerPrefix = '';

  ChannelList({
    this.headerPrefix,
  });

  void addGroup(Group group) => groups.add(group);
}
