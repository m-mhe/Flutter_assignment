//Import Section:
import 'package:flutter/material.dart';
import 'package:photo_gallery/home.dart';

//Code execution point:
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //This app is build with material design system:
    return MaterialApp(
      //Hiding The debug banner:
      debugShowCheckedModeBanner: false,
      //This 'theme' contain all of the default style for the entire app:
      theme: ThemeData(
        //Default theme for AppBar:
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Color(0xff2CAB00),
            foregroundColor: Colors.white,
            titleTextStyle:
                TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ),
      //App title
      title: 'Photo Gallery',
      //Gallery page:
      home: HomePage(),
    );
  }
}
