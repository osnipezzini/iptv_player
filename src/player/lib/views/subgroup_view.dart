import 'package:flutter/material.dart';
import 'package:iptv_player/models/subgroup.dart';
import 'package:iptv_player/views/channel_view.dart';

class SubGroupView extends StatelessWidget {
  const SubGroupView({
    super.key,
    required this.subGroup,
  });

  final SubGroup subGroup;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(subGroup.name!),
            ListView.builder(
              itemBuilder: (context, index) =>
                  ChannelView(channel: subGroup.channels[index]),
            )
          ],
        ),
      ),
    );
  }
}
