// lib/repository/home_repository.dart

import 'package:beauty_station_web/resource/enums_manager.dart';
import 'package:beauty_station_web/services/api/api_response.dart';
import 'package:beauty_station_web/services/api/end_points.dart';
import 'package:beauty_station_web/utils/app_utils/app_logs.dart';
import 'package:get/get.dart';

class MainRepository {
  //*************** get user salon data *****************/
  Future<ApiResponseModel> getSalonData() async {
    return await ApiService().getData(
      EndPoints.getsalonData,
    );
  }

//*************** get user beautician data *****************/
  Future<ApiResponseModel> getBeauticianData() async {
    return await ApiService().getData(
      EndPoints.getBeautician,
    );
  }
}

class ApiService extends GetConnect {
  // Function to get data from an endpoint
  Future<ApiResponseModel> getData(String endpoint) async {
    try {
      final response = await get('${EndPoints.baseUrl}$endpoint');
      AppLogs.debugLog("${response.statusCode}", 'statusCode');
      final String stateCode = response.body['statusCode'].toString();
      final data = response.body;
      if (response.statusCode == 200 || stateCode.startsWith('2')) {
        AppLogs.successLog(data.toString());
        return ApiResponseModel(
          status: ApiStatus.success,
          data: data,
        );
      } else {
        AppLogs.errorLog('error getData');
        return ApiResponseModel(
          status: ApiStatus.error,
          data: data,
        );
      }
    } catch (e) {
      AppLogs.errorLog('$e');
      throw Exception('Failed to load data: $e');
    }
  }
}
