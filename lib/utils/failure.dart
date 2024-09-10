import 'package:cat_breeds_app/utils/constants.dart';

class Failure {
  final String message;
  Failure({required this.message});
}

class DefaultFailure extends Failure {
  DefaultFailure() : super(message: Constants.defaultFailureMessage);
}

class InvalidStateFailure extends Failure {
  InvalidStateFailure() : super(message: Constants.invalidState);
}

class HTTPRequestFailure extends Failure {
  HTTPRequestFailure({required super.message});
}

class ExceptionCaughtFailure extends Failure {
  final Exception exception;
  ExceptionCaughtFailure({required this.exception})
      : super(message: Constants.exceptionCaught);
}
