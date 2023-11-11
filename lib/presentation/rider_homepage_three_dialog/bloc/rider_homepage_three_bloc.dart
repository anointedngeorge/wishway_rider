import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_three_dialog/models/rider_homepage_three_model.dart';
part 'rider_homepage_three_event.dart';
part 'rider_homepage_three_state.dart';

/// A bloc that manages the state of a RiderHomepageThree according to the event that is dispatched to it.
class RiderHomepageThreeBloc
    extends Bloc<RiderHomepageThreeEvent, RiderHomepageThreeState> {
  RiderHomepageThreeBloc(RiderHomepageThreeState initialState)
      : super(initialState) {
    on<RiderHomepageThreeInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<RiderHomepageThreeState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    RiderHomepageThreeInitialEvent event,
    Emitter<RiderHomepageThreeState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
