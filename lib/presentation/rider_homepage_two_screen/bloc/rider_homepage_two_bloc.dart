import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_two_screen/models/rider_homepage_two_model.dart';
part 'rider_homepage_two_event.dart';
part 'rider_homepage_two_state.dart';

/// A bloc that manages the state of a RiderHomepageTwo according to the event that is dispatched to it.
class RiderHomepageTwoBloc
    extends Bloc<RiderHomepageTwoEvent, RiderHomepageTwoState> {
  RiderHomepageTwoBloc(RiderHomepageTwoState initialState)
      : super(initialState) {
    on<RiderHomepageTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RiderHomepageTwoInitialEvent event,
    Emitter<RiderHomepageTwoState> emit,
  ) async {}
}
