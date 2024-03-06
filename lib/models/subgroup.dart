import 'package:m3u_parser/models/channel.dart';

class SubGroup {
  final String name;
  final List<Channel> channels = [];

  SubGroup({
    required this.name,
  });

  @override
  String toString() => '$name - ${channels.length} canais.';
}
