import 'bloc/rider_homepage_four_bloc.dart';
import 'models/rider_homepage_four_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_three_dialog/rider_homepage_three_dialog.dart';

class RiderHomepageFourDialog extends StatelessWidget {
  const RiderHomepageFourDialog({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RiderHomepageFourBloc>(
        create: (context) => RiderHomepageFourBloc(RiderHomepageFourState(
            riderHomepageFourModelObj: RiderHomepageFourModel()))
          ..add(RiderHomepageFourInitialEvent()),
        child: RiderHomepageFourDialog());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 36.v),
        child: Column(children: [Spacer(), _buildOfflineSection(context)]));
  }

  /// Section Widget
  Widget _buildOfflineSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                  onTap: () {
                    onTapFrame(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(right: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_offline".tr,
                                style: theme.textTheme.headlineSmall),
                            BlocSelector<RiderHomepageFourBloc,
                                    RiderHomepageFourState, bool?>(
                                selector: (state) => state.isSelectedSwitch,
                                builder: (context, isSelectedSwitch) {
                                  return CustomSwitch(
                                      margin: EdgeInsets.only(
                                          top: 9.v, bottom: 3.v),
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        context
                                            .read<RiderHomepageFourBloc>()
                                            .add(ChangeSwitchEvent(
                                                value: value));
                                      });
                                })
                          ]))),
              SizedBox(height: 31.v),
              Container(
                  width: 263.h,
                  margin: EdgeInsets.only(right: 46.h),
                  child: Text("msg_you_are_currently".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.bodyMedium!.copyWith(height: 1.70))),
              SizedBox(height: 8.v)
            ]));
  }

  /// Displays a dialog with the [RiderHomepageThreeDialog] content.
  onTapFrame(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: RiderHomepageThreeDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
