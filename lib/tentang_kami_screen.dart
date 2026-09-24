import 'package:flutter/material.dart';

class TentangKamiScreen extends StatelessWidget {
  const TentangKamiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC79836),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFFB71C1C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Center(
              child: Text(
                'Tentang kami',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white70, width: 2),
              ),
              child: const SingleChildScrollView(
                child: Text(
                  'Ruang Masa Nusantara merupakan lorem ipsum',

                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Tombol Kembali
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD7CCC8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: const BorderSide(color: Color(0xFFB71C1C), width: 4),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Kembali',
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFFB71C1C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
