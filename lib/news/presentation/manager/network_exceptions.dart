import 'dart:io';
import 'package:dio/dio.dart';

abstract class NetworkExceptions {
  static String handleResponse(Response? response) {
    int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      case 400:
        return 'Bad Request -- Your request is invalid.';
      case 401:
        return 'Unauthorized -- Your API key is wrong';
      case 403:
        return 'Forbidden -- You have reached your daily quota, the next reset is at 00:00 UTC.';
      case 429:
        return 'Too Many Requests -- You have made more requests per second than you are allowed.';
      case 500:
        return 'Internal Server Error -- We had a problem with our server. Try again later.';
      case 503:
        return 'Service Unavailable -- We\'re temporarily offline for maintenance. Please try again later.';
      default:
        var responseCode = statusCode;
        return "Received invalid status code: $responseCode";
    }
  }

  // task exception object and return NetworkExceptions
  static String getDioExceptionMessage(error) {
    if (error is Exception) {
      try {
        if (error is DioException) {
          if (error.error is SocketException) {
            return 'There is no internet connection';
          }
          switch (error.type) {
            case DioExceptionType.badCertificate:
              return 'badCertificate';
            case DioExceptionType.badResponse:
              return NetworkExceptions.handleResponse(error.response);
            case DioExceptionType.connectionError:
              return 'There is no internet connection';
            case DioExceptionType.cancel:
              return 'The request was cancelled by the user';
            case DioExceptionType.connectionTimeout:
              return 'request time out';
            case DioExceptionType.unknown:
              return 'unexpected error';
            case DioExceptionType.receiveTimeout:
              return 'The server did not respond in time';
            case DioExceptionType.sendTimeout:
              return 'The request could not be sent in time';
          }
        } else if (error is SocketException) {
          return 'noInternetConnection';
        } else {
          return 'unexpected error';
        }
      } on FormatException catch (_) {
        return 'formatException';
      } catch (_) {
        return 'unexpected error';
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return 'unable to process';
      } else {
        return 'unexpected error';
      }
    }
  }
}
