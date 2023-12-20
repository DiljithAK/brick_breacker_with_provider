import 'package:avatar_glow/avatar_glow.dart';
import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Ball extends StatelessWidget {
  const Ball({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(
      builder: (context, value, state) => Container(
        alignment: Alignment(value.ballX, value.ballY),
        child: value.isGameStarted
            ? const BallWidget()
            : const AvatarGlow(
                endRadius: 60.0,
                child: BallWidget(),
              ),
      ),
    );
  }
}

class BallWidget extends StatelessWidget {
  const BallWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: const BoxDecoration(
        color: Colors.deepPurple,
        shape: BoxShape.circle,
      ),
    );
  }
}
