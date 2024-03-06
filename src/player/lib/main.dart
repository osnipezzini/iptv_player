import 'package:flutter/material.dart';
import 'package:iptv_player/app_widget.dart';
import 'package:iptv_player/services/channel_service.dart';

Future<void> main() async {
  await ChannelService.initDb();
  runApp(const MyApp());
}
