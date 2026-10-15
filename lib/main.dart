import 'package:flutter/material.dart';

import 'menu_screen.dart';
import 'level_screen.dart';
import 'pengaturan_screen.dart';
import 'tentang_kami_screen.dart';
import 'splash_screen.dart';

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
            TargetPlatform.android: _NoPageTransitionBuilder(),
            TargetPlatform.iOS: _NoPageTransitionBuilder(),
            TargetPlatform.linux: _NoPageTransitionBuilder(),
            TargetPlatform.macOS: _NoPageTransitionBuilder(),
            TargetPlatform.windows: _NoPageTransitionBuilder(),
          },
        ),
      ),

      initialRoute: 'awal',
      routes: {
        'awal': (context) => const SplashScreen(),
        '/menu': (context) => const MenuScreen(),
        '/level': (context) => const LevelScreen(),
        '/pengaturan': (context) => const PengaturanScreen(),
        '/tentang_kami': (context) => const TentangKamiScreen(),
      },
    );
  }
}

class _NoPageTransitionBuilder extends PageTransitionsBuilder {
  const _NoPageTransitionBuilder();

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
