import 'package:flutter/material.dart';

import 'menu_screen.dart';
import 'level_screen.dart';
import 'pengaturan_screen.dart';
import 'tentang_kami_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ruang Masa Nusantara',

      initialRoute: '/',
      routes: {
        '/': (context) => const MenuScreen(),
        '/level': (context) => const LevelScreen(),
        '/pengaturan': (context) => const PengaturanScreen(),
        '/tentang_kami': (context) => const TentangKamiScreen(),
      },
    );
  }
}
