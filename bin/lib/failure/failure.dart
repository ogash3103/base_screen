abstract class Failure {

  String get code;
  String get message;
  Object? get cause;
  StackTrace? get stackTrace;

}