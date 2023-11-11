import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/confirm_pickup_screen/models/confirm_pickup_model.dart';
part 'confirm_pickup_event.dart';
part 'confirm_pickup_state.dart';

/// A bloc that manages the state of a ConfirmPickup according to the event that is dispatched to it.
class ConfirmPickupBloc extends Bloc<ConfirmPickupEvent, ConfirmPickupState> {
  ConfirmPickupBloc(ConfirmPickupState initialState) : super(initialState) {
    on<ConfirmPickupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ConfirmPickupInitialEvent event,
    Emitter<ConfirmPickupState> emit,
  ) async {}
}
