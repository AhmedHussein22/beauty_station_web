// lib/repository/home_repository.dart

import 'package:beauty_solution_web/resource/enums_manager.dart';
import 'package:beauty_solution_web/services/api/api_response.dart';
import 'package:beauty_solution_web/services/api/end_points.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
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

  //*************** get user beautician data *****************/
  Future<ApiResponseModel> getPDFforUser() async {
    return await ApiService().getData(
      EndPoints.getPdfFile,
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
      final databytes = response.bodyBytes;
      AppLogs.infoLog('${response.statusCode}');
      if (response.statusCode == 200 || stateCode.startsWith('2')) {
        AppLogs.successLog(data.toString());
        AppLogs.successLog(databytes.toString());
        return ApiResponseModel(
          status: ApiStatus.success,
          data: data,
          databytes: databytes,
        );
      } else {
        AppLogs.errorLog('error getData');
        return ApiResponseModel(
          status: ApiStatus.error,
          data: data,
          databytes: databytes,
        );
      }
    } catch (e) {
      AppLogs.errorLog('$e');
      throw Exception('Failed to load data: $e');
    }
  }
}
