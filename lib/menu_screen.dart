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
            // Judul
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

            imageButton(
              imagePath: 'assets/tombol/tombol_mulai.png',
              width: 600,
              height: 120,
              onTap: () {
                Navigator.pushNamed(context, '/pilih_cerita');
              },
            ),
            const SizedBox(height: 0),
            imageButton(
              imagePath: 'assets/tombol/Pengaturan_fix.png',
              width: 260,
              height: 100,
              onTap: () {
                Navigator.pushNamed(context, '/pengaturan');
              },
            ),
            const SizedBox(height: 13),
            imageButton(
              imagePath: 'assets/tombol/tombol_tentangkami.png',
              onTap: () {
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

  Widget imageButton({
    required String imagePath,
    required VoidCallback onTap,
    double width = 0,
    double height = 0,
  }) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}
