// ignore_for_file: must_be_immutable

part of 'rider_homepage_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RiderHomepageFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RiderHomepageFourEvent extends Equatable {}

/// Event that is dispatched when the RiderHomepageFour widget is first created.
class RiderHomepageFourInitialEvent extends RiderHomepageFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch
class ChangeSwitchEvent extends RiderHomepageFourEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
