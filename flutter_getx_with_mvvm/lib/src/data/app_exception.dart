
class AppExceptions implements Exception{

  final _message;
  final _prefix;
  AppExceptions([this._message,this._prefix]);

  String toString(){
    return '$_prefix$_message';
  }


}

class InternetException extends AppExceptions{
  InternetException([String? message]):super(message,'No Internet');
}

class RequestTimeOut extends AppExceptions{
  RequestTimeOut([String? message]):super(message,'Request Time Out');
}

class ServiceException extends AppExceptions{
  ServiceException([String? message]):super(message,'Internal Server Error ');
}

class InvalidUrl extends AppExceptions{
  InvalidUrl([String? message]):super(message,'InvalidUrl ');
}

class fetchDataException extends AppExceptions{
  fetchDataException([String? message]):super(message,'fetchDataException ');
}
