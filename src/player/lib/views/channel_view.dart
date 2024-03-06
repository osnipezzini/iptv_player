import 'package:flutter/material.dart';
import 'package:iptv_player/models/channel.dart';

class ChannelView extends StatelessWidget {
  const ChannelView({
    super.key,
    required this.channel,
  });

  final Channel channel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          // Ação a ser executada quando o botão for pressionado
          print('Botão de imagem pressionado!');
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              channel.imageUrl ??
                  '', // Insira a URL da sua imagem de 40x40 pixels aqui
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 4),
            Text(
              channel.name!,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
