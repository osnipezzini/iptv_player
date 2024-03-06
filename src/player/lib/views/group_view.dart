import 'package:flutter/material.dart';
import 'package:iptv_player/models/group.dart';

import 'subgroup_view.dart';

class GroupView extends StatelessWidget {
  const GroupView({super.key, required this.group});

  final Group group;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(group.name!),
            ListView.builder(
              itemBuilder: (context, index) =>
                  SubGroupView(subGroup: group.subGroups[index]),
            )
          ],
        ),
      ),
    );
  }
}
