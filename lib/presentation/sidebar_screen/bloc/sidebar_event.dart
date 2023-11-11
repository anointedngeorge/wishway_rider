// ignore_for_file: must_be_immutable

part of 'sidebar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Sidebar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SidebarEvent extends Equatable {}

/// Event that is dispatched when the Sidebar widget is first created.
class SidebarInitialEvent extends SidebarEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends SidebarEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
