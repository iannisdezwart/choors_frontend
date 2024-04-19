import 'package:choors_frontend/bootstrap.dart';
import 'package:choors_frontend/routing/routes.dart';
import 'package:choors_frontend/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(bootstrap: Bootstrap()));
}

class MyApp extends StatelessWidget {
  final Bootstrap bootstrap;

  const MyApp({
    required this.bootstrap,
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      routes: routes,
    );
  }
}
