import 'package:flutter/material.dart';

class PhotoInfo extends StatelessWidget {
  final String nameImage;
  final String locationImage;

  PhotoInfo(
      {super.key, required this.nameImage, required this.locationImage});

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
        leading: IconButton(
          style: IconButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: const Color(0xff7ACA5E),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        title: Text(nameImage.toUpperCase()),
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
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).width - 95,
                      width: MediaQuery.sizeOf(context).width - 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                              image: AssetImage(locationImage),
                              fit: BoxFit.cover),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(-1, 7),
                                spreadRadius: 3,
                                blurRadius: 15)
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        nameImage,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 18),
                      child: Text(
                        'In the quiet hush of dawn, where the first light kisses the earth, photography comes alive. Each click of the shutter captures a fleeting moment, immortalizing the dance of shadows and light.',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400,),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width - 20,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xff2CAB00),
                          borderRadius: BorderRadius.circular(360),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-1, 10),
                              spreadRadius: 0,
                              blurRadius: 17
                            )
                          ]
                        ),
                        child: const Center(
                          child: Text(
                            'See More',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
                      child: Text('Suggestions',style: TextStyle(color: Color(0xff2CAB00),fontSize: 18),),
                    ),
                    GridView.builder(
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
                              Navigator.pushReplacement(
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:18,bottom: 7),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.7,
                          height: 3,
                          child: const ColoredBox(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).width /3.3,
                          width: MediaQuery.sizeOf(context).width / 2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                  image: AssetImage(locationImage),
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5, 7),
                                    spreadRadius: 3,
                                    blurRadius: 15)
                              ]),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Text(
                                nameImage,
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w400),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 10, bottom: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                  'In the quiet hush of dawn, where the first light',
                                  style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400,),
                                ),
                                  Text(
                                    'light kisses the earth, photography comes alive.',
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400,),
                                  ),
                                  Text(
                                    'Each click of the shutter captures a fleeting',
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400,),
                                  ),
                                  Text(
                                    'moment, immortalizing the dance of shadows and',
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400,),
                                  ),
                                  Text(
                                    'light. Through the lens, ordinary scenes transform',
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400,),
                                  ),
                                  Text(
                                    'into extraordinary tapestries of emotion and',
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400,),
                                  ),
                                  Text(
                                    'beauty, testament to the artistry of the human eye.',
                                    style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w400,),
                                  ),
                                ]
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width /2.4,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: const Color(0xff2CAB00),
                                    borderRadius: BorderRadius.circular(360),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(-1, 10),
                                          spreadRadius: 0,
                                          blurRadius: 17
                                      )
                                    ]
                                ),
                                child: const Center(
                                  child: Text(
                                    'See More',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 18, bottom: 18),
                      child: Text('Suggestions',style: TextStyle(color: Color(0xff2CAB00),fontSize: 18),),
                    ),
                    GridView.builder(
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
                              Navigator.pushReplacement(
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top:18,bottom: 7),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.7,
                          height: 3,
                          child: const ColoredBox(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
