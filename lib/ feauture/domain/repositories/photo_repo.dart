import 'package:dio/dio.dart';
import 'package:gallary_app/%20feauture/data/models/photo_models/photo_models.dart';

class PhotoRepo {
  final Dio dio;
  PhotoRepo({
    required this.dio,
  });

  Future<List<PhotoModels>> getPhot() async {
    final result = await dio.get('photos');

    final jsonList = result.data;
    List<PhotoModels> photos = [];

    for (var photos in jsonList) {
      photos.add(PhotoModels.fromJson(photos));
    }

    return photos;
  }
}
