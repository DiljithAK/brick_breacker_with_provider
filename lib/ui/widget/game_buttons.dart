import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:provider/provider.dart';

class GameButtons extends StatelessWidget {
  const GameButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(
      builder: (context, value, state) {
        return Container(
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
        );
      },
    );
  }
}
