import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:anointed_s_application1/presentation/sidebar_screen/models/sidebar_model.dart';
part 'sidebar_event.dart';
part 'sidebar_state.dart';

/// A bloc that manages the state of a Sidebar according to the event that is dispatched to it.
class SidebarBloc extends Bloc<SidebarEvent, SidebarState> {
  SidebarBloc(SidebarState initialState) : super(initialState) {
    on<SidebarInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<SidebarState> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  _onInitialize(
    SidebarInitialEvent event,
    Emitter<SidebarState> emit,
  ) async {
    emit(state.copyWith(
      isSelectedSwitch: false,
    ));
  }
}
