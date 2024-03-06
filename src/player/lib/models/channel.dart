import 'package:isar/isar.dart';

part 'channel.g.dart';

@embedded
class Channel {
  String? id;
  String? link;
  String? imageUrl;
  String? name;

  Channel({
    this.id,
    this.link,
    this.imageUrl,
    this.name,
  });

  @override
  String toString() => name ?? '';
}
