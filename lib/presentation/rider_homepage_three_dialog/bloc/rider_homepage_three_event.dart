// ignore_for_file: must_be_immutable

part of 'rider_homepage_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RiderHomepageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RiderHomepageThreeEvent extends Equatable {}

/// Event that is dispatched when the RiderHomepageThree widget is first created.
class RiderHomepageThreeInitialEvent extends RiderHomepageThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends RiderHomepageThreeEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
