// ignore_for_file: must_be_immutable

part of 'rider_homepage_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RiderHomepageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RiderHomepageOneEvent extends Equatable {}

/// Event that is dispatched when the RiderHomepageOne widget is first created.
class RiderHomepageOneInitialEvent extends RiderHomepageOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends RiderHomepageOneEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
