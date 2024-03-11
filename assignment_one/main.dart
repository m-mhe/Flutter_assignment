//Import block.
import "song.dart";
import "media.dart";

//The code execution block.
void main() {
  //Instances of classes.
  Media messageOne = Media();
  Song messageTwo = Song(artist: 'Eurythmics', songName: 'Sweet Dreams');

  //Using those playing methods.
  messageOne.play();
  messageTwo.play();
}
