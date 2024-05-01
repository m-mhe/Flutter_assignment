//Import section
import 'package:flutter/material.dart';

//This Dart code defines a Flutter application that displays a profile page for a user named Mackenzie Foy.

//The main function is the entry point of the Flutter application.
// It calls the runApp function to start the application with the MyApp widget as the root widget.
void main(){
  runApp(const MyApp());
}

//The MyApp widget is a stateless widget that represents the root of the application.
// It sets up the application's title, theme, and home page
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //The theme property defines the application's theme.
      // It sets the centerTitle property of the AppBarTheme to true, which centers the app bar title.
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        )
      ),
      title: 'Profile',
      home: const ProfilePage(),
    );
  }
}

//The ProfilePage widget is a stateless widget that represents the profile page.
// It builds the user interface for the profile page, including the app bar, profile picture, user information, and a biography.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    //The Scaffold widget provides a basic layout for the profile page.
    // It includes an AppBar with the title "Profile".
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(fontWeight: FontWeight.w600),),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/20),
              //This code creates a circular container that displays the user's profile picture.
                // It uses the MediaQuery class to dynamically adjust the size of the container based on the screen size.
              child: Container(
                height: MediaQuery.sizeOf(context).height/4.7,
                width: MediaQuery.sizeOf(context).height/4.7,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'img/picTwo.jpg'
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              ),
              //These lines display the user's name and email address below the profile picture.
              const Padding(padding: EdgeInsets.only(top: 7),
                child: Text('Mackenzie Foy', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
              ),
              const Padding(padding: EdgeInsets.only(),
                child: Text('mackenziefoy@gmail.com', style: TextStyle(color: Colors.grey),),
              ),
              //This text widget displays a brief biography of the user.
              // It uses the textAlign property to center the text.
              Padding(padding: EdgeInsets.only(top: 15,left: MediaQuery.sizeOf(context).height/27, right: MediaQuery.sizeOf(context).height/27),
                child: const Text('Mackenzie Foy is an American actress. She is known for portraying Renesmee Cullen in the 2012 film The Twilight Saga: Breaking Dawn – Part 2, which earned her a Young Artist Award nomination as Best Supporting Young Actress in a Feature Film.She portrayed young Murph in the 2014 space epic Interstellar, for which she received a Saturn Award for Best Performance by a Younger Actor among other awards nominations. She starred as Clara in Disney 2018 film The Nutcracker and the Four Realms.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.w400),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//Overall, this code creates a simple yet informative profile page for a user named Mackenzie Foy. It demonstrates the use of various Flutter widgets and properties to build a visually appealing and responsive user interface.