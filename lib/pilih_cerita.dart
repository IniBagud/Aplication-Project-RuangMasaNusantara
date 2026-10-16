import 'package:flutter/material.dart';

class PilihCerita extends StatelessWidget {
  const PilihCerita({super.key});

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
                padding: const EdgeInsets.only(right: 10, top: 100),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 150,
                    height: 60,
                    child: Image.asset(
                      'assets/tombol/Kembali.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),

            storyButton(
              imagePath: 'assets/gambar/Cerita_kemerdekaan.png',
              onTap: () {
                Navigator.pushNamed(context, '/kemerdekaan');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget storyButton({required String imagePath, required VoidCallback onTap}) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(),
        child: GestureDetector(
          onTap: onTap,
          child: SizedBox(
            width: 280,
            height: 180,
            child: Image.asset(imagePath, fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
