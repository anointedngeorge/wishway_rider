// ignore_for_file: must_be_immutable

part of 'rider_homepage_four_bloc.dart';

/// Represents the state of RiderHomepageFour in the application.
class RiderHomepageFourState extends Equatable {
  RiderHomepageFourState({
    this.isSelectedSwitch = false,
    this.riderHomepageFourModelObj,
  });

  RiderHomepageFourModel? riderHomepageFourModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        riderHomepageFourModelObj,
      ];
  RiderHomepageFourState copyWith({
    bool? isSelectedSwitch,
    RiderHomepageFourModel? riderHomepageFourModelObj,
  }) {
    return RiderHomepageFourState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      riderHomepageFourModelObj:
          riderHomepageFourModelObj ?? this.riderHomepageFourModelObj,
    );
  }
}
