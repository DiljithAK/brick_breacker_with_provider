import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:brick_breacker_with_provider/ui/widget/cover_screen.dart';
import 'package:brick_breacker_with_provider/ui/widget/ball.dart';
import 'package:brick_breacker_with_provider/ui/widget/brick.dart';
import 'package:brick_breacker_with_provider/ui/widget/game_buttons.dart';
import 'package:brick_breacker_with_provider/ui/widget/game_over.dart';
import 'package:brick_breacker_with_provider/ui/widget/player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(builder: (context, value, child) {
      return GestureDetector(
        onTap: value.startGame,
        child: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          body: Center(
            child: Stack(
              children: [
                const CoverScreen(),
                const GameOver(),
                const Ball(),
                const Player(),
                for (var brick in value.bricks)
                  Brick(
                    brickHeight: GameFlowProvider.brickHeight,
                    brickWidth: GameFlowProvider.brickWidth,
                    brickX: brick[0],
                    brickY: brick[1],
                    brickBroken: brick[2],
                  ),
                const GameButtons(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
