import 'package:flutter/material.dart';

class LevelScreen extends StatelessWidget {
  const LevelScreen({super.key});

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
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, top: 90),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 140,
                    height: 50,
                    child: Image.asset(
                      'assets/tombol/Kembali.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),

            Center(
              child: Transform.translate(
                offset: Offset(0, 0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/gambar/Level.png', // logo
                      width: 200,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/gambar/sejarah_kemerdekaan.png', // logo
                      width: 200,
                      height: 60,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            levelButton(
              imagePath: 'assets/tombol/Level1.png',
              onTap: () {
                Navigator.pushNamed(context, '/pilih_cerita');
              },
            ),
            levelButton(
              imagePath: 'assets/tombol/Level2.png',
              onTap: () {
                Navigator.pushNamed(context, '/pilih_cerita');
              },
            ),
            levelButton(
              imagePath: 'assets/tombol/Level3.png',
              onTap: () {
                Navigator.pushNamed(context, '/pilih_cerita');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget levelButton({required String imagePath, required VoidCallback onTap}) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(),
        child: GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: 250,
            height: 100,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
