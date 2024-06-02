import 'package:assignment_five/acreen/contact_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contact List',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xff667C89),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 3,
            fixedSize: Size.fromWidth(double.maxFinite),
            backgroundColor: Color(0xff667C89),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            )
          )
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          )
        ),
        listTileTheme: ListTileThemeData(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          iconColor: Color(0xff667C89),
          textColor: Color(0xff667C89),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16
          )
        )
      ),
      home: const ContactList(),
    );
  }
}
