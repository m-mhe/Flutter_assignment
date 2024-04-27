import 'package:flutter/material.dart';
import 'package:photo_gallery/photo_info.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //Variables:
  final Map<String, String> images = {
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
        appBar: AppBar(
          leading: const Icon(Icons.monochrome_photos_rounded),
          title: const Text('Photo Gallery'),
          actions: [
            IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        backgroundColor: Color(0xff2CAB00),
                        title: Text('Info:', style: TextStyle(color: Colors.white),),
                        content: Text(
                            'This is a assignment project for exam week two.', style: TextStyle(color: Colors.white),),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.more_vert))
          ],
        ),
        body: OrientationBuilder(
          builder: (context, o) {
            if (o == Orientation.portrait) {
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
                            crossAxisCount: 2,
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
            } else {
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
