import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC79836),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 40),
            // Judul Level
            const Text(
              'LEVEL',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    color: Colors.red,
                    blurRadius: 2,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                children: [
                  _buildLevelButton('Level 1', const Color(0xFFA12727)),
                  const SizedBox(height: 20),
                  _buildLevelButton('Level 2', const Color(0xFFB55D10)),
                  const SizedBox(height: 20),
                  _buildLevelButton('Level 3', const Color(0xFFA12727)),
                  const SizedBox(height: 20),
                  _buildLevelButton('Level 5', const Color(0xFFB55D10)),
                  const SizedBox(height: 20),
                  _buildLevelButton('Level 6', const Color(0xFFA12727)),
                ],
              ),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }

  Widget _buildLevelButton(String text, Color color) {
    return SizedBox(
      height: 65,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
            side: const BorderSide(color: Colors.white, width: 3),
          ),
        ),
        onPressed: () {
          print("$text dipilih");
        },
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
