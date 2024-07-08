
import 'package:beauty_station_web/resource/enums_manager.dart';

class ApiResponseModel {
  ApiStatus status;
  int? stateCode;
  dynamic data;
  String message;
  ApiResponseModel({required this.status, this.data, this.message = '', this.stateCode});
}
