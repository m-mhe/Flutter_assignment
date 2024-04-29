//Import section:
import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //Variables:
  final Map<String, String> images = {
    //This variable contain image related data:
    'Mountain': 'img/1.jpg',
    'Nature': 'img/2.jpg',
    'Indoor Dark': 'img/3.jpg',
    'Indoor Light': 'img/4.jpg',
    'waterfall': 'img/5.jpg',
    'earth': 'img/6.jpg',
    'pyramid': 'img/7.jpg',
    'light': 'img/8.jpg',
    'Digital Art': 'img/9.jpg',
    'Day Light': 'img/10.jpg',
    'River': 'img/11.jpg',
    'Moon': 'img/12.jpg',
    'Foggy Morning': 'img/13.jpg',
    'Green': 'img/14.jpg',
    'Sun Shine': 'img/15.jpg',
    'Cyberpunk 2077': 'img/16.jpg',
    'Sun Rise': 'img/17.jpg',
    "No Man's Sky": 'img/18.jpg',
    'Astronaut': 'img/19.jpg',
    'Sci-fi': 'img/20.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //AppBar:
        appBar: AppBar(
          //Leading area:
          leading: const Icon(Icons.monochrome_photos_rounded),
          //Page title:
          title: const Text('Photo Gallery'),
          //Action area, it will show app info after press:
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        backgroundColor: Color(0xff2CAB00),
                        title: Text(
                          'Info:',
                          style: TextStyle(color: Colors.white),
                        ),
                        content: Text(
                          'This is a assignment project for exam week two.',
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.more_vert))
          ],
        ),
        //For the adjustment on mobile screen orientation we are using the OrientationBuilder():
        body: OrientationBuilder(
          //Build method:
          builder: (context, o) {
            //Screen layout if the device on vertical mode:
            if (o == Orientation.portrait) {
              //For making the child widget scrollable we are using SingleChildScrollView() widget:
              return SingleChildScrollView(
                //Column will place it's child elements vertically:
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      //This will add padding in allover it's child widget.
                      //Showing images dynamically.
                      child: GridView.builder(
                          //It's for showing some items in grid layout.
                          shrinkWrap: true,
                          //True means this GridView() layout will use it's necessary space in the screen.
                          primary: false,
                          //This will turn-off it's scrolling feature.
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, //Two items per row.
                            mainAxisSpacing: 22, //Vertical spacing.
                            crossAxisSpacing: 22, //Horizontal spacing.
                          ),
                          itemCount: images.length,
                          //Assigning the number for how much items we wanna show on the screen.
                          itemBuilder: (context, i) {
                            //This will work like a loop for building items dynamically.
                            return GestureDetector(
                              //For recognizing a tap on screen, So the widget will act like a button.
                              onTap: () {
                                Navigator.push(
                                  //Going to the image info page.
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return PhotoInfo(
                                        //Taking image name and file location as parameters.
                                        nameImage: images.keys.toList()[i],
                                        //Name of image.
                                        locationImage: images.values
                                            .toList()[i], //Location of image.
                                      );
                                    },
                                  ),
                                );
                              },
                              //This is a image card, for displaying the image on gridlayout.
                              child: Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                  //Setting the style of the image card.
                                  boxShadow: const [
                                    BoxShadow(
                                      //Shadow
                                      color: Colors.grey,
                                      offset: Offset(-8, 10),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(25),
                                  //This will define How round we wanna make our border.
                                  image: DecorationImage(
                                      image:
                                          AssetImage(images.values.toList()[i]),
                                      //Feting data from map for showing the image dynamically.
                                      fit: BoxFit.cover),
                                ),
                                child: Column(
                                  //It contain image name.
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 12.5),
                                      child: Text(
                                        images.keys.toList()[i].toUpperCase(),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(-2, 2),
                                                blurRadius: 7,
                                              )
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      //A simple black line at the end.
                      padding: const EdgeInsets.only(bottom: 7),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.7,
                        height: 3,
                        child: const ColoredBox(color: Colors.black),
                      ),
                    )
                  ],
                ),
              );
            } else {
              //Screen layout if the device is horizontally placed.
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: GridView.builder(
                          shrinkWrap: true,
                          primary: false,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            //Showing two extra items per row, science we have extra width.
                            mainAxisSpacing: 22,
                            crossAxisSpacing: 22,
                          ),
                          itemCount: images.length,
                          itemBuilder: (context, i) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return PhotoInfo(
                                        nameImage: images.keys.toList()[i],
                                        locationImage:
                                            images.values.toList()[i],
                                      );
                                    },
                                  ),
                                );
                              },
                              child: Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(-8, 10),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(images.values.toList()[i]),
                                      fit: BoxFit.cover),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, bottom: 12.5),
                                      child: Text(
                                        images.keys.toList()[i].toUpperCase(),
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(-2, 2),
                                                blurRadius: 7,
                                              )
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 7),
                      child: SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.7,
                        height: 3,
                        child: const ColoredBox(color: Colors.black),
                      ),
                    )
                  ],
                ),
              );
            }
          },
        ));
  }
}
