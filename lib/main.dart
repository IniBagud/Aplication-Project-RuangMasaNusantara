import 'package:flutter/material.dart';

import 'menu_screen.dart';
import 'level_screen.dart';
import 'pengaturan_screen.dart';
import 'tentang_kami_screen.dart';
import 'splash_screen.dart';
import 'pilih_cerita.dart';
import 'kemerdekaan.dart';

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
      theme: ThemeData(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: _PageTransitionBuilder(),
            TargetPlatform.iOS: _PageTransitionBuilder(),
            TargetPlatform.linux: _PageTransitionBuilder(),
            TargetPlatform.macOS: _PageTransitionBuilder(),
            TargetPlatform.windows: _PageTransitionBuilder(),
          },
        ),
      ),

      initialRoute: 'awal',
      routes: {
        'awal': (context) => const SplashScreen(),
        '/menu': (context) => const MenuScreen(),
        '/pengaturan': (context) => const PengaturanScreen(),
        '/tentang_kami': (context) => const TentangKamiScreen(),
        '/pilih_cerita': (context) => const PilihCerita(),
        '/kemerdekaan': (context) => const Kemerdekaan(),
        '/level': (context) => const LevelScreen(),
      },
    );
  }
}

class _PageTransitionBuilder extends PageTransitionsBuilder {
  const _PageTransitionBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
