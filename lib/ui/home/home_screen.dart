import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:brick_breacker_with_provider/ui/home/cover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(builder: (context, value, child) {
      return Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: const Center(
          child: Stack(
            children: [
              CoverScreen(),
            ],
          ),
        ),
      );
    });
  }
}
