// ignore_for_file: must_be_immutable

part of 'confirm_pickup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmPickup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmPickupEvent extends Equatable {}

/// Event that is dispatched when the ConfirmPickup widget is first created.
class ConfirmPickupInitialEvent extends ConfirmPickupEvent {
  @override
  List<Object?> get props => [];
}
