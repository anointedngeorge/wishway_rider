// ignore_for_file: must_be_immutable

part of 'rider_homepage_bloc.dart';

/// Represents the state of RiderHomepage in the application.
class RiderHomepageState extends Equatable {
  RiderHomepageState({
    this.isSelectedSwitch = false,
    this.riderHomepageModelObj,
  });

  RiderHomepageModel? riderHomepageModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        riderHomepageModelObj,
      ];
  RiderHomepageState copyWith({
    bool? isSelectedSwitch,
    RiderHomepageModel? riderHomepageModelObj,
  }) {
    return RiderHomepageState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      riderHomepageModelObj:
          riderHomepageModelObj ?? this.riderHomepageModelObj,
    );
  }
}
