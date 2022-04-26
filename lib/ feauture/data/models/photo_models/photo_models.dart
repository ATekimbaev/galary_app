import 'package:gallary_app/%20feauture/data/models/photo_models/photo_data.dart';

class PhotoModels {
  int? totalItems;
  int? itemsPerPage;
  int? countOfPages;
  List<Data>? data;

  PhotoModels(
      {this.totalItems, this.itemsPerPage, this.countOfPages, this.data});

  PhotoModels.fromJson(Map<String, dynamic> json) {
    totalItems = json['totalItems'];
    itemsPerPage = json['itemsPerPage'];
    countOfPages = json['countOfPages'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['totalItems'] = totalItems;
    data['itemsPerPage'] = itemsPerPage;
    data['countOfPages'] = countOfPages;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}



