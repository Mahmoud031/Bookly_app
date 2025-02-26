import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to server was cancelled');
      case DioExceptionType.unknown:
        if(dioError.message!.contains('SocketException')){
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected error occured, please try again');
      default:
        return ServerFailure('Something went wrong');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not found , try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, try again later');
    } else {
      return ServerFailure('Something went wrong');
    }
  }
}
