part of 'page_1_bloc.dart';

@immutable
abstract class Page1State {}

class Page1Initial extends Page1State {}

class Page1Loading extends Page1State {}

class Page1Loaded extends Page1State {
  final String message;
  Page1Loaded({required this.message});
}

class Page1Error extends Page1State {
  final String errorMessage;
  Page1Error({required this.errorMessage});
}
