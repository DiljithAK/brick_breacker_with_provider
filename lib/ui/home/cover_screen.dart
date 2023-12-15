import 'package:brick_breacker_with_provider/core/providers/game_flow_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  static var gameFont = GoogleFonts.pressStart2p(
      textStyle: TextStyle(
          color: Colors.deepPurple[600], letterSpacing: 0, fontSize: 24));

  @override
  Widget build(BuildContext context) {
    return Consumer<GameFlowProvider>(
        builder: (context, value, child) => value.isGameStarted
            ? Container()
            : Stack(
                children: [
                  Container(
                      alignment: const Alignment(0, -0.2),
                      child: Text("BRICK BREAKER", style: gameFont)),
                  Container(
                      alignment: const Alignment(0, -0.1),
                      child: Text('Tap to Play',
                          style: TextStyle(color: Colors.deepPurple[400])))
                ],
              ));
  }
}
