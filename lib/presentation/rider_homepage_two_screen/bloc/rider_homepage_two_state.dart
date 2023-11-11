// ignore_for_file: must_be_immutable

part of 'rider_homepage_two_bloc.dart';

/// Represents the state of RiderHomepageTwo in the application.
class RiderHomepageTwoState extends Equatable {
  RiderHomepageTwoState({this.riderHomepageTwoModelObj});

  RiderHomepageTwoModel? riderHomepageTwoModelObj;

  @override
  List<Object?> get props => [
        riderHomepageTwoModelObj,
      ];
  RiderHomepageTwoState copyWith(
      {RiderHomepageTwoModel? riderHomepageTwoModelObj}) {
    return RiderHomepageTwoState(
      riderHomepageTwoModelObj:
          riderHomepageTwoModelObj ?? this.riderHomepageTwoModelObj,
    );
  }
}
