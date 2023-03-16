import 'package:flutter/material.dart';

import 'presentation/login/login_screen.dart';
import 'utils/theme.dart';
import 'api/di_service.dart' as di;

void main() async {

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3BeeTest',
      theme: TBTheme().globalTheme,
      routes: {
        '/': (context) => const LoginScreen(),
      },
    );
  }
}