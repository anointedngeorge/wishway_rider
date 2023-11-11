// ignore_for_file: must_be_immutable

part of 'rider_homepage_one_bloc.dart';

/// Represents the state of RiderHomepageOne in the application.
class RiderHomepageOneState extends Equatable {
  RiderHomepageOneState({
    this.isSelectedSwitch = false,
    this.riderHomepageOneModelObj,
  });

  RiderHomepageOneModel? riderHomepageOneModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        riderHomepageOneModelObj,
      ];
  RiderHomepageOneState copyWith({
    bool? isSelectedSwitch,
    RiderHomepageOneModel? riderHomepageOneModelObj,
  }) {
    return RiderHomepageOneState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      riderHomepageOneModelObj:
          riderHomepageOneModelObj ?? this.riderHomepageOneModelObj,
    );
  }
}
