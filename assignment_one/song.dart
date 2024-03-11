//Import block
import 'media.dart';

//The Song class
class Song implements Media {
  String artist;
  String? songName;
  Song({required this.artist, this.songName});
  @override
  void play() {
    print('Playing ${songName ?? 'song'} by $artist...');
  }
}
