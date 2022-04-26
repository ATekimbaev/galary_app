import 'package:gallary_app/%20feauture/data/models/photo_models/photo_image.dart';
import 'package:gallary_app/%20feauture/data/models/photo_models/photo_models.dart';

class Data {
  int? id;
  String? name;
  String? dateCreate;
  String? description;
  bool? newImage;
  bool? popular;
  Image? image;
  String? user;

  Data(
      {this.id,
      this.name,
      this.dateCreate,
      this.description,
      this.newImage,
      this.popular,
      this.image,
      this.user});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    dateCreate = json['dateCreate'];
    description = json['description'];
    newImage = json['new'];
    popular = json['popular'];
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['dateCreate'] = dateCreate;
    data['description'] = description;
    data['new'] = newImage;
    data['popular'] = popular;
    if (image != null) {
      data['image'] = image!.toJson();
    }
    data['user'] = user;
    return data;
  }
}