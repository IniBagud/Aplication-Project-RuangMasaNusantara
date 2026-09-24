import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFB71C1C), Color(0xFF5D1011)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul Game
            const Text(
              'RUANG MASA\nNUSANTARA',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFFA000),
                shadows: [
                  Shadow(
                    color: Colors.black45,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),

            _buildMenuButton('Mulai', () {
              Navigator.pushNamed(context, '/level');
            }),
            const SizedBox(height: 20),

            _buildMenuButton('Pengaturan', () {
              Navigator.pushNamed(context, '/pengaturan');
            }),
            const SizedBox(height: 20),

            _buildMenuButton('Tentang kami', () {
              Navigator.pushNamed(context, '/tentang_kami');
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuButton(String text, VoidCallback onPressed) {
    return SizedBox(
      width: 250,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFB95000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Colors.white, width: 3),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
