import 'failure.dart';

class NetworkFailure implements Failure {

  @override
  String get code => "NETWORK";

  @override
  final String message;

  @override
  final Object? cause;

  @override
  final StackTrace? stackTrace;

  NetworkFailure(this.message, {this.cause, this.stackTrace});

}


class AuthFailure implements Failure {

  @override
  String get code => "AUTH";

  @override
  final String message;

  @override
  final Object? cause;

  @override
  final StackTrace? stackTrace;

  AuthFailure(this.message, {this.cause, this.stackTrace});

}


class CacheFailure implements Failure {

  @override
  String get code => "CACHE";

  @override
  final String message;

  @override
  final Object? cause;

  @override
  final StackTrace? stackTrace;

  CacheFailure(this.message, {this.cause, this.stackTrace});

}

class UnknownFailure implements Failure {

  @override
  String get code => "UNKNOWN";

  @override
  final String message;

  @override
  final Object? cause;

  @override
  final StackTrace? stackTrace;

  UnknownFailure(this.message, {this.cause, this.stackTrace});

}


