import 'package:flutter/material.dart';
import 'package:shopping_app/app.dart';
import 'package:shopping_app/app_dependencies.dart';

void main() {
  runApp(
    const AppDependencies(
      child: MyApp(),
    ),
  );
}
