import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/frame_51127_screen/models/frame_51127_model.dart';
part 'frame_51127_event.dart';
part 'frame_51127_state.dart';

/// A bloc that manages the state of a Frame51127 according to the event that is dispatched to it.
class Frame51127Bloc extends Bloc<Frame51127Event, Frame51127State> {
  Frame51127Bloc(Frame51127State initialState) : super(initialState) {
    on<Frame51127InitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<Frame51127State> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<Frame51127State> emit,
  ) {
    emit(state.copyWith(
      radioGroup1: event.value,
    ));
  }

  _onInitialize(
    Frame51127InitialEvent event,
    Emitter<Frame51127State> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
      radioGroup1: "",
    ));
  }
}
