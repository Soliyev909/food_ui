import 'package:flutter/material.dart';
import '../../feature/food_app/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Food UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Signika",
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}