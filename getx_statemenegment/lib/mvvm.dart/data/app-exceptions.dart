import 'package:get/get.dart';

class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String tostring() {
    return "$_prefix$_message";
  }
}

class InterneteException extends AppExceptions {
  InterneteException([String? message]) : super(message, "no internet");
}
