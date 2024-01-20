class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions([String? message]) : super('No Internet Connection');
}

class RequestTimeoutExceptions extends AppExceptions {
  RequestTimeoutExceptions([String? message]) : super('Request Timeout');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super('Internal Server Error');
}
