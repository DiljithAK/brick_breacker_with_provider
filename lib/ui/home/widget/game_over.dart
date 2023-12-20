import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key});

  static var gameFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(
          color: Colors.deepPurple[600], letterSpacing: 0, fontSize: 24));

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(
      builder: (context, value, state) {
        return value.isGameOver
            ? Stack(
                children: [
                  Container(
                    alignment: const Alignment(0, -0.2),
                    child: Text(
                      "G A M E  O V E R",
                      style: gameFont,
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0, 0),
                    child: GestureDetector(
                      onTap: value.restartGame,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.deepPurple,
                          child: const Text(
                            "Play again",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}
