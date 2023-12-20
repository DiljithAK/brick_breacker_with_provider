import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:brick_breacker_with_provider/ui/home/cover_screen.dart';
import 'package:brick_breacker_with_provider/ui/home/widget/ball.dart';
import 'package:brick_breacker_with_provider/ui/home/widget/brick.dart';
import 'package:brick_breacker_with_provider/ui/home/widget/game_over.dart';
import 'package:brick_breacker_with_provider/ui/home/widget/player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:math' as math;

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
                CoverScreen(),
                GameOver(
                  isGameOver: value.isGameOver,
                  playAgain: value.restartGame,
                ),
                Ball(),
                Player(),
                for (var brick in value.bricks)
                  Brick(
                    brickHeight: GameFlowProvider.brickHeight,
                    brickWidth: GameFlowProvider.brickWidth,
                    brickX: brick[0],
                    brickY: brick[1],
                    brickBroken: brick[2],
                  ),
                Container(
                alignment: const Alignment(0, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.rotate(
                      angle: 180 * math.pi / 180,
                      child: IconButton(
                        onPressed: () => value.moveLeft(),
                        icon: const Icon(Icons.play_circle_filled, size: 40),
                      ),
                    ),
                    IconButton(
                      onPressed: () => value.moveRight(),
                      icon: const Icon(Icons.play_circle_filled, size: 40),
                    ),
                  ],
                ),
              ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
