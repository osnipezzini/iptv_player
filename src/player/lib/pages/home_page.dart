import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iptv_player/models/group.dart';
import 'package:iptv_player/services/channel_service.dart';
import 'package:iptv_player/views/busy_indicator.dart';
import 'package:iptv_player/views/group_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Group> channels = [];
  final ChannelService channelService = ChannelService();

  void _importList() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['*.m3u', '*.m3u8'],
    );
    if (result == null || result.files.isEmpty) return;

    await channelService.parseFile(result.files.first.path!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _getBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: _importList,
        tooltip: 'Import list',
        child: const Icon(Icons.import_export),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return FutureBuilder(
        future: channelService.getChannels(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const BusyIndicator(message: 'Carregando canais...');
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error!.toString()),
            );
          }
          if (!snapshot.hasData || snapshot.data!.groups.isEmpty) {
            return const Center(
              child: Text('Nenhum canal cadastrado!'),
            );
          }
          return ListView.builder(itemBuilder: (context, index) {
            return GroupView(group: snapshot.data!.groups[index]);
          });
        });
  }
}
