import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Player extends StatelessWidget {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(
      builder: (context, value, state) {
        final playerX =
            (2 * value.playerX + value.playerWidth) / (2 - value.playerWidth);
        final playerWidth =
            MediaQuery.of(context).size.width * value.playerWidth / 2;
        return Container(
          alignment: Alignment(playerX, 0.9),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 10,
              width: playerWidth,
              color: Colors.deepPurple,
            ),
          ),
        );
      },
    );
  }
}
