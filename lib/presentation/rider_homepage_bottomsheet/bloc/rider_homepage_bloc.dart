import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_bottomsheet/models/rider_homepage_model.dart';
part 'rider_homepage_event.dart';
part 'rider_homepage_state.dart';

/// A bloc that manages the state of a RiderHomepage according to the event that is dispatched to it.
class RiderHomepageBloc extends Bloc<RiderHomepageEvent, RiderHomepageState> {
  RiderHomepageBloc(RiderHomepageState initialState) : super(initialState) {
    on<RiderHomepageInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<RiderHomepageState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    RiderHomepageInitialEvent event,
    Emitter<RiderHomepageState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
