class Channel {
  final String id;
  final String link;
  final String imageUrl;
  final String name;

  Channel({
    required this.id,
    required this.link,
    required this.imageUrl,
    required this.name,
  });

  @override
  String toString() => name;
}
