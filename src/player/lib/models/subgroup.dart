import 'package:iptv_player/models/channel.dart';
import 'package:isar/isar.dart';

part 'subgroup.g.dart';

@embedded
class SubGroup {
  String? name;
  List<Channel> channels = [];

  SubGroup({
    this.name,
  });

  void addChannel(Channel channel) => channels.add(channel);

  @override
  String toString() => '$name - ${channels.length} canais.';
}
