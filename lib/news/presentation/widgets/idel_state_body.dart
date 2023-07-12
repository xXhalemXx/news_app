import 'package:flutter/material.dart';

class IdleBody extends StatelessWidget {
  const IdleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(),);
  }
}
