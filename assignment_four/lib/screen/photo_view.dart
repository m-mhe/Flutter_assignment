import 'dart:convert';
import 'package:assignment_four/screen/photo_info.dart';
import 'package:http/http.dart' as http;
import 'package:assignment_four/data_model.dart';
import 'package:flutter/material.dart';

class PhotoView extends StatefulWidget {
  const PhotoView({super.key});

  @override
  State<PhotoView> createState() => _PhotoViewState();
}

class _PhotoViewState extends State<PhotoView> {
  @override
  void initState() {
    super.initState();
    _apiCallForImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pictures'),
      ),
      body: Visibility(
        visible: loading == false,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: RefreshIndicator(
          onRefresh: _apiCallForImage,
          child: ListView.separated(
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return _photoInfoScreen(i);
                        },
                      ),
                    );
                  },
                  child: _imageAndTitle(i),
                );
              },
              separatorBuilder: (context, i) {
                return const Divider();
              },
              itemCount: imageInfoList.length),
        ),
      ),
    );
  }

  //------------------------------------------------------------------Variables------------------------------------------------------------------
  List<ImageModel> imageInfoList = [];
  bool loading = true;

  //------------------------------------------------------------------Functions------------------------------------------------------------------
  Future<void> _apiCallForImage() async {
    const String uRL = 'https://jsonplaceholder.typicode.com/photos';
    final Uri uRI = Uri.parse(uRL);
    http.Response getResponseFromServer = await http.get(uRI);
    final serverData = jsonDecode(getResponseFromServer.body);
    for (Map<String, dynamic> i in serverData) {
      ImageModel imageModel = ImageModel.fromJson(i);
      imageInfoList.add(imageModel);
    }
    setState(() {
      loading = false;
    });
  }

  //------------------------------------------------------------------Widgets------------------------------------------------------------------
  ListTile _imageAndTitle(int i) {
    return ListTile(
      leading: Image.network(imageInfoList[i].imageThumbnailUrl ?? ''),
      title: Text(
        imageInfoList[i].imageName ?? '',
        style:
            const TextStyle(color: Colors.black54, fontWeight: FontWeight.w500),
      ),
    );
  }

  PhotoInfo _photoInfoScreen(int i) => PhotoInfo(
      iD: imageInfoList[i].albumId ?? 0,
      imageUrl: imageInfoList[i].imageUrl ?? '',
      imageTitle: imageInfoList[i].imageName ?? '');
}
