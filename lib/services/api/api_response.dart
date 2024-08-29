import 'package:beauty_solution_web/resource/enums_manager.dart';

class ApiResponseModel {
  ApiStatus status;
  int? stateCode;
  dynamic data;
  String message;
  int? totalItems;
  int? pageNumber;
  int? pageSize;
  ApiResponseModel({required this.status, this.data, this.message = '', this.stateCode, this.totalItems, this.pageNumber, this.pageSize});
}
