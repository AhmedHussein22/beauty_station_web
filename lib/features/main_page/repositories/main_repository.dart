// lib/repository/home_repository.dart

import 'package:beauty_station_web/resource/enums_manager.dart';
import 'package:beauty_station_web/services/api/api_response.dart';
import 'package:beauty_station_web/services/api/dio_consumer.dart';
import 'package:beauty_station_web/services/api/end_points.dart';

class MainRepository {
  //*************** get user salon data *****************/
  Future<ApiResponseModel> getSalonData() async {
    return DioConsumer.request(
      EndPoints.getsalonData,
      ApiMethodType.get,
    );
  }

//*************** get user beautician data *****************/
  Future<ApiResponseModel> getBeauticianData() async {
    return DioConsumer.request(
      EndPoints.getBeautician,
      ApiMethodType.get,
    );
  }
}
