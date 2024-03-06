import 'package:m3u_parser/models/subgroup.dart';

class Group {
  final String name;
  final List<SubGroup> subGroups = [];

  Group({required this.name});

  @override
  String toString() => '$name - ${subGroups.length} sub-grupos.';
}
