
import 'package:beauty_solution_web/resource/enums_manager.dart';

class ApiResponseModel {
  ApiStatus status;
  int? stateCode;
  dynamic data;
  dynamic databytes;
  String message;
  ApiResponseModel({required this.status, this.data, this.message = '', this.stateCode , this.databytes});
}
