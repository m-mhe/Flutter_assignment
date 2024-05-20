import 'package:assignment_four/screen/photo_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Photo Gallery',
      theme: _appTheme(),
      home: const PhotoView(),
    );
  }

  ThemeData _appTheme() {
    return ThemeData(
        appBarTheme: const AppBarTheme(
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            centerTitle: true,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white));
  }
}
