import 'package:flutter/material.dart';

class BusyIndicator extends StatelessWidget {
  const BusyIndicator({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const CircularProgressIndicator(),
          Text(message),
        ],
      ),
    );
  }
}
