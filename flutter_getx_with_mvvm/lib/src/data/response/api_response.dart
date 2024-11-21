

import 'package:flutter_getx_with_mvvm/src/data/response/status.dart';

class ApiResponse<T> {


  Status? status;
  T? data;
  String? message;


  ApiResponse(this.status,this.data,this.message);

  ApiResponse.loading():status=Status.LOADING;
  ApiResponse.completed():status=Status.COMPLETED;
  ApiResponse.error(this.message):status=Status.ERROR;
  @override
  String toString() {
    // TODO: implement toString
     return "Status:$status \nMessage:$message\nData:$data";
  }
}