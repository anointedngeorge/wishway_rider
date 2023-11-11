import 'bloc/rider_homepage_three_bloc.dart';
import 'models/rider_homepage_three_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RiderHomepageThreeDialog extends StatelessWidget {
  const RiderHomepageThreeDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RiderHomepageThreeBloc>(
      create: (context) => RiderHomepageThreeBloc(RiderHomepageThreeState(
        riderHomepageThreeModelObj: RiderHomepageThreeModel(),
      ))
        ..add(RiderHomepageThreeInitialEvent()),
      child: RiderHomepageThreeDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 32.h,
        vertical: 36.v,
      ),
      child: Column(
        children: [
          Spacer(),
          _buildRiderHomepageColumn(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRiderHomepageColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 27.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_online".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                BlocSelector<RiderHomepageThreeBloc, RiderHomepageThreeState,
                    bool?>(
                  selector: (state) => state.isSelectedSwitch,
                  builder: (context, isSelectedSwitch) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(
                        top: 9.v,
                        bottom: 3.v,
                      ),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<RiderHomepageThreeBloc>()
                            .add(ChangeSwitchEvent(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
          Container(
            width: 238.h,
            margin: EdgeInsets.only(right: 71.h),
            child: Text(
              "msg_you_are_currently2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.70,
              ),
            ),
          ),
          SizedBox(height: 7.v),
        ],
      ),
    );
  }
}
