import 'package:iptv_player/models/subgroup.dart';
import 'package:isar/isar.dart';

part 'group.g.dart';

@embedded
class Group {
  String? name;
  List<SubGroup> subGroups = [];

  Group({
    this.name,
  });

  void addSubGroup(SubGroup subGroup) => subGroups.add(subGroup);

  @override
  String toString() => '$name - ${subGroups.length} sub-grupos.';
}
