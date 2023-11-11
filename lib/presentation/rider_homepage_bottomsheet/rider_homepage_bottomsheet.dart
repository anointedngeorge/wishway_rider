import 'bloc/rider_homepage_bloc.dart';
import 'models/rider_homepage_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RiderHomepageBottomsheet extends StatelessWidget {
  const RiderHomepageBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RiderHomepageBloc>(
      create: (context) => RiderHomepageBloc(RiderHomepageState(
        riderHomepageModelObj: RiderHomepageModel(),
      ))
        ..add(RiderHomepageInitialEvent()),
      child: RiderHomepageBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 62.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 186.h,
              child: Divider(
                indent: 101.h,
              ),
            ),
            SizedBox(height: 126.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_online".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                BlocSelector<RiderHomepageBloc, RiderHomepageState, bool?>(
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
                            .read<RiderHomepageBloc>()
                            .add(ChangeSwitchEvent(value: value));
                      },
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 30.v),
            Container(
              width: 244.h,
              margin: EdgeInsets.only(right: 59.h),
              child: Text(
                "msg_you_are_currently3".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.70,
                ),
              ),
            ),
            SizedBox(height: 30.v),
          ],
        ),
      ),
    );
  }
}
