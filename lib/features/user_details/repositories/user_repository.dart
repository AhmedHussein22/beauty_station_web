// lib/repository/home_repository.dart

import 'package:beauty_solution_web/features/main_page/repositories/main_repository.dart';
import 'package:beauty_solution_web/services/api/api_response.dart';
import 'package:beauty_solution_web/services/api/end_points.dart';

class UserRepository {
  //*************** get user salon data by ID *****************/
    Future<ApiResponseModel> getSalonDataByID({required int id}) async {
    return await ApiService().getData(
      '${EndPoints.getSalonDataByID}$id',
    );
  }

  //*************** get user Beautician data by ID *****************/
  Future<ApiResponseModel> getBeauticianById({required int id}) async {
    return await ApiService().getData(
      '${EndPoints.getBeauticianById}$id',
    );
  }


}
