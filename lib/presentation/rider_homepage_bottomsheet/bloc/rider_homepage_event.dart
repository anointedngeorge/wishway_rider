// ignore_for_file: must_be_immutable

part of 'rider_homepage_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RiderHomepage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RiderHomepageEvent extends Equatable {}

/// Event that is dispatched when the RiderHomepage widget is first created.
class RiderHomepageInitialEvent extends RiderHomepageEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends RiderHomepageEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
