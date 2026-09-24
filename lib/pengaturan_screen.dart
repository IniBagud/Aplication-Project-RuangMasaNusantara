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
                'Pengaturan',
                style: TextStyle(
                  fontSize: 36,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
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

          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFD7CCC8), // Abu-abu muda
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
          const SizedBox(height: 50),
        ],
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
