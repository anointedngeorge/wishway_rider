// ignore_for_file: must_be_immutable

part of 'rider_homepage_three_bloc.dart';

/// Represents the state of RiderHomepageThree in the application.
class RiderHomepageThreeState extends Equatable {
  RiderHomepageThreeState({
    this.isSelectedSwitch = false,
    this.riderHomepageThreeModelObj,
  });

  RiderHomepageThreeModel? riderHomepageThreeModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        riderHomepageThreeModelObj,
      ];
  RiderHomepageThreeState copyWith({
    bool? isSelectedSwitch,
    RiderHomepageThreeModel? riderHomepageThreeModelObj,
  }) {
    return RiderHomepageThreeState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      riderHomepageThreeModelObj:
          riderHomepageThreeModelObj ?? this.riderHomepageThreeModelObj,
    );
  }
}
