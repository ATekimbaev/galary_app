 
import 'package:dio/dio.dart';

class LoginRepo {
  const LoginRepo({required this.dio});
  final Dio dio;

  Future logIn({required String name}) async {
    final result = await dio.post('/clietns', queryParameters: {
      'name':name,
      'allowedGrantTypes':[
        'password',
        'efresh_token'
      ]
    }
    );
    return (print(result));
  }
}
