import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_four_dialog/models/rider_homepage_four_model.dart';
part 'rider_homepage_four_event.dart';
part 'rider_homepage_four_state.dart';

/// A bloc that manages the state of a RiderHomepageFour according to the event that is dispatched to it.
class RiderHomepageFourBloc
    extends Bloc<RiderHomepageFourEvent, RiderHomepageFourState> {
  RiderHomepageFourBloc(RiderHomepageFourState initialState)
      : super(initialState) {
    on<RiderHomepageFourInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<RiderHomepageFourState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    RiderHomepageFourInitialEvent event,
    Emitter<RiderHomepageFourState> emit,
  ) async {
    emit(state.copyWith(isSelectedSwitch: false));
  }
}
