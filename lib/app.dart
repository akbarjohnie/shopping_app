import 'package:flutter/material.dart';
import 'package:shopping_app/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontWeight: FontWeight.w500,
            height: 132 / 100,
            fontSize: 16,
          ),
          headlineSmall: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 132 / 100,
              letterSpacing: 1.44),
          bodyLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            decoration: TextDecoration.lineThrough,
            color: Color(0xFF595959),
            fontWeight: FontWeight.w300,
          ),
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
