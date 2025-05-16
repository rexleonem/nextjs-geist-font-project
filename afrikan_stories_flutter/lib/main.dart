import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ProviderScope(child: AfrikanStoriesApp()));
}

class AfrikanStoriesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afrikan Stories',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // Can be toggled in settings
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
