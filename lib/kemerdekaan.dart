import 'package:flutter/material.dart';

class Kemerdekaan extends StatelessWidget {
  const Kemerdekaan({super.key});

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

            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/level');
                  },
                  child: SizedBox(
                    width: 150,
                    height: 60,
                    child: Image.asset(
                      'assets/tombol/Lanjut_kecil.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
