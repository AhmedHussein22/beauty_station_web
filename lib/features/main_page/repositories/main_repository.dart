// lib/repository/home_repository.dart

import 'package:beauty_solution_web/resource/enums_manager.dart';
import 'package:beauty_solution_web/services/api/api_response.dart';
import 'package:beauty_solution_web/services/api/end_points.dart';
import 'package:beauty_solution_web/utils/app_utils/app_logs.dart';
import 'package:get/get.dart';

class MainRepository {
  //*************** get user salon data *****************/
  Future<ApiResponseModel> getSalonData({required int pageNumber, required int pageSize, required String filter, required String asc}) async {
    return await ApiService().getData(
      '${EndPoints.getsalonData}?pageNumber=$pageNumber&pageSize=$pageSize&filter=$filter&sortOrder=$asc',
    );
  }

//*************** get user beautician data *****************/
  Future<ApiResponseModel> getBeauticianData({required int pageNumber, required int pageSize, required String filter, required String asc}) async {
    return await ApiService().getData(
      '${EndPoints.getBeautician}?pageNumber=$pageNumber&pageSize=$pageSize&filter=$filter&sortOrder=$asc',
    );
  }


  //*************** get user beautician data *****************/
  Future<ApiResponseModel> getPDFforUser() async {
    return await ApiService().getData(
      EndPoints.getPdfFile,
    );
  }

  //*************** resend contract for salon *****************/
  Future<ApiResponseModel> resendContractSalon(String id, bool isSalon) async {
    return await ApiService().getData(
      isSalon ? EndPoints.resendContractSalon + id : EndPoints.resendContractBeautician + id,
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
      AppLogs.infoLog('${response.statusCode}');
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
