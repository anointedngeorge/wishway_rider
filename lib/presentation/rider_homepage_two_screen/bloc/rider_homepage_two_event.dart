// ignore_for_file: must_be_immutable

part of 'rider_homepage_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RiderHomepageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RiderHomepageTwoEvent extends Equatable {}

/// Event that is dispatched when the RiderHomepageTwo widget is first created.
class RiderHomepageTwoInitialEvent extends RiderHomepageTwoEvent {
  @override
  List<Object?> get props => [];
}
