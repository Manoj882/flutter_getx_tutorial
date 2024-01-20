class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super('No Internet Connection');
}

class RequestTimeoutException extends AppExceptions {
  RequestTimeoutException([String? message]) : super('Request Timeout');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super('Internal Server Error');
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message])
      : super('Invalid or malformed request url');
}

class UnExpectedException extends AppExceptions {
  UnExpectedException([String? message])
      : super('Something went wrong. Please try again later.');
}
