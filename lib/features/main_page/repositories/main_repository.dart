// lib/repository/home_repository.dart

import 'package:beauty_station_web/resource/enums_manager.dart';
import 'package:beauty_station_web/services/api/api_response.dart';
import 'package:beauty_station_web/services/api/dio_consumer.dart';
import 'package:beauty_station_web/services/api/end_points.dart';
import 'package:dio/dio.dart';

class MainRepository {
  //*************** post photos or videos from upload media api *****************/
  Future<ApiResponseModel> upLoadCarMedia() async {
    final FormData formData = FormData.fromMap({
      
    });

    return DioConsumer.request(EndPoints.uploadCarMedia, ApiMethodType.post, body: formData);
  }
}
