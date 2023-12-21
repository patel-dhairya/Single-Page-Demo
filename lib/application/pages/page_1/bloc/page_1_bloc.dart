import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'page_1_event.dart';
part 'page_1_state.dart';

class Page1Bloc extends Bloc<Page1Event, Page1State> {
  Page1Bloc() : super(Page1Initial()) {
    on<Page1Event>((event, emit) {
      emit(Page1Loading());
    });
  }
}
