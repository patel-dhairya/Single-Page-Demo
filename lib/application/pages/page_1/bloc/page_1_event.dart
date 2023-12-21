part of 'page_1_bloc.dart';

@immutable
abstract class Page1Event {}

class Page1RequestedEvent extends Page1Event {
  Page1RequestedEvent();
}
