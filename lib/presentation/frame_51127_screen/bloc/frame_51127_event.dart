// ignore_for_file: must_be_immutable

part of 'frame_51127_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame51127 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame51127Event extends Equatable {}

/// Event that is dispatched when the Frame51127 widget is first created.
class Frame51127InitialEvent extends Frame51127Event {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends Frame51127Event {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends Frame51127Event {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
