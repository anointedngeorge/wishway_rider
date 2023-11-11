// ignore_for_file: must_be_immutable

part of 'frame_51127_bloc.dart';

/// Represents the state of Frame51127 in the application.
class Frame51127State extends Equatable {
  Frame51127State({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.frame51127ModelObj,
  });

  Frame51127Model? frame51127ModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        frame51127ModelObj,
      ];
  Frame51127State copyWith({
    String? radioGroup,
    String? radioGroup1,
    Frame51127Model? frame51127ModelObj,
  }) {
    return Frame51127State(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      frame51127ModelObj: frame51127ModelObj ?? this.frame51127ModelObj,
    );
  }
}
