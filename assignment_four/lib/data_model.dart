class ImageModel {
  String? imageThumbnailUrl;
  String? imageName;
  String? imageUrl;
  int? albumId;
  int? iD;

  ImageModel.fromJson(Map<String, dynamic> json) {
    iD = json["id"];
    albumId = json["albumId"];
    imageName = json["title"];
    imageUrl = json["url"];
    imageThumbnailUrl = json["thumbnailUrl"];
  }
}
