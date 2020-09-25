
class Album {
  final String name;
  final String imageUrl;
  Album({this.name, this.imageUrl});
  factory Album.fromJson(Map<String, dynamic> json) {
    List factoryNameList;
    List factoryImageUrList;
    return Album(
        name: json['data'][1]['name'], imageUrl: json['data'][1]['thumbnail']);
  }
}