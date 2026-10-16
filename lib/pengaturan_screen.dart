import 'package:flutter/material.dart';

class PengaturanScreen extends StatefulWidget {
  const PengaturanScreen({super.key});

  @override
  State<PengaturanScreen> createState() => _PengaturanScreenState();
}

class _PengaturanScreenState extends State<PengaturanScreen> {
  double _musikValue = 0.7;
  double _suaraValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC79836),
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
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 50, bottom: 0),
              child: Transform.scale(
                scaleX: 1.08,
                child: Image.asset(
                  'assets/gambar/Pengaturan_logo.png', // logo
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 60),

            _buildSliderRow('Musik', _musikValue, (value) {
              setState(() {
                _musikValue = value;
              });
            }),
            const SizedBox(height: 40),

            _buildSliderRow('Suara', _suaraValue, (value) {
              setState(() {
                _suaraValue = value;
              });
            }),

            const Spacer(),

            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    width: 200,
                    height: 100,
                    child: Image.asset(
                      'assets/tombol/Kembali_besar.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  Widget _buildSliderRow(
    String label,
    double value,
    ValueChanged<double> onChanged,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(color: Colors.red, blurRadius: 2)],
            ),
          ),
          Expanded(
            child: SliderTheme(
              data: SliderThemeData(
                activeTrackColor: const Color(0xFFB71C1C),
                inactiveTrackColor: Colors.white,
                thumbColor: Colors.grey[300],
              ),
              child: Slider(value: value, onChanged: onChanged),
            ),
          ),
        ],
      ),
    );
  }
}
