// ignore_for_file: must_be_immutable

part of 'confirm_pickup_bloc.dart';

/// Represents the state of ConfirmPickup in the application.
class ConfirmPickupState extends Equatable {
  ConfirmPickupState({this.confirmPickupModelObj});

  ConfirmPickupModel? confirmPickupModelObj;

  @override
  List<Object?> get props => [
        confirmPickupModelObj,
      ];
  ConfirmPickupState copyWith({ConfirmPickupModel? confirmPickupModelObj}) {
    return ConfirmPickupState(
      confirmPickupModelObj:
          confirmPickupModelObj ?? this.confirmPickupModelObj,
    );
  }
}
