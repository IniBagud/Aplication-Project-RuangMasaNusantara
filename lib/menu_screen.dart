import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/gambar/Background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Judul Game
            Center(
              child: Transform.translate(
                offset: Offset(0, 80),
                child: Image.asset(
                  'assets/gambar/LOGO_RUANG_MASA2_1.png', // logo
                  width: 350,
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 200),

            _buildImageButton(
              imagePath: 'assets/tombol/tombol_mulai.png',
              width: 600,
              height: 120,
              onPressed: () {
                Navigator.pushNamed(context, '/level');
              },
            ),
            const SizedBox(height: 0),
            _buildImageButton(
              imagePath: 'assets/tombol/Pengaturan_fix.png',
              width: 260,
              height: 100,
              onPressed: () {
                Navigator.pushNamed(context, '/pengaturan');
              },
            ),
            const SizedBox(height: 13),
            _buildImageButton(
              imagePath: 'assets/tombol/tombol_tentangkami.png',
              onPressed: () {
                Navigator.pushNamed(context, '/tentang_kami');
              },
              width: 600,
              height: 165,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageButton({
    required String imagePath,
    required VoidCallback onPressed,
    double width = 0,
    double height = 0,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}
