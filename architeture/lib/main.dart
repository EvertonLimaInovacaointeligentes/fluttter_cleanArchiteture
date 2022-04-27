import 'package:architeture/features/layers/presetation/ui/pages/carro_page.dart';
import 'package:architeture/features/login/presetation/ui/pages/login.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/Inject.dart';
import 'features/login/presetation/ui/pages/splash.dart';

void main() {
  Inject.init();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash':(_)=> const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/home': (_) => CarroPage(),
      },
    ),
  );
}
