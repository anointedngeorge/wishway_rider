// ignore_for_file: must_be_immutable

part of 'sidebar_bloc.dart';

/// Represents the state of Sidebar in the application.
class SidebarState extends Equatable {
  SidebarState({
    this.isSelectedSwitch = false,
    this.sidebarModelObj,
  });

  SidebarModel? sidebarModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        sidebarModelObj,
      ];
  SidebarState copyWith({
    bool? isSelectedSwitch,
    SidebarModel? sidebarModelObj,
  }) {
    return SidebarState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      sidebarModelObj: sidebarModelObj ?? this.sidebarModelObj,
    );
  }
}
