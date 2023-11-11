import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_one_screen/models/rider_homepage_one_model.dart';
part 'rider_homepage_one_event.dart';
part 'rider_homepage_one_state.dart';

/// A bloc that manages the state of a RiderHomepageOne according to the event that is dispatched to it.
class RiderHomepageOneBloc
    extends Bloc<RiderHomepageOneEvent, RiderHomepageOneState> {
  RiderHomepageOneBloc(RiderHomepageOneState initialState)
      : super(initialState) {
    on<RiderHomepageOneInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<RiderHomepageOneState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    RiderHomepageOneInitialEvent event,
    Emitter<RiderHomepageOneState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
