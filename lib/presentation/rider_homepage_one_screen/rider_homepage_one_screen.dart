import 'bloc/rider_homepage_one_bloc.dart';
import 'models/rider_homepage_one_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/custom_elevated_button.dart';
import 'package:anointed_s_application1/widgets/custom_icon_button.dart';
import 'package:anointed_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class RiderHomepageOneScreen extends StatelessWidget {
  const RiderHomepageOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<RiderHomepageOneBloc>(
      create: (context) => RiderHomepageOneBloc(RiderHomepageOneState(
        riderHomepageOneModelObj: RiderHomepageOneModel(),
      ))
        ..add(RiderHomepageOneInitialEvent()),
      child: RiderHomepageOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 882.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 881.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage4,
                        height: 881.v,
                        width: 428.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 32.h,
                            right: 32.h,
                            bottom: 35.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 6.h),
                                child: CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  alignment: Alignment.centerLeft,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgMenu,
                                  ),
                                ),
                              ),
                              SizedBox(height: 29.v),
                              _buildFourColumn(context),
                              SizedBox(height: 83.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  height: 99.v,
                                  width: 249.h,
                                  margin: EdgeInsets.only(right: 35.h),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgAtomLocation,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        alignment: Alignment.bottomLeft,
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.imgVector151,
                                        height: 54.v,
                                        width: 179.h,
                                        alignment: Alignment.bottomCenter,
                                        margin: EdgeInsets.only(bottom: 9.v),
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: SizedBox(
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Container(
                                                  padding: EdgeInsets.all(7.h),
                                                  decoration: AppDecoration
                                                      .gradientOnErrorContainerToBlue
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder20,
                                                  ),
                                                  child: Container(
                                                    height: 24.adaptSize,
                                                    width: 24.adaptSize,
                                                    decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        12.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgFrame51099,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize,
                                                alignment: Alignment.topCenter,
                                                margin:
                                                    EdgeInsets.only(top: 9.v),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              _buildFiveColumn(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 59.h,
                    top: 94.v,
                  ),
                  child: Text(
                    "msg_delivery_request".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFourColumn(BuildContext context) {
    return Container(
      width: 364.h,
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 41.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_21_bartus_street2".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "lbl_12km_2omins".tr,
                    style: CustomTextStyles
                        .titleSmallOverpassOnErrorContainerSemiBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20.v),
          Align(
            alignment: Alignment.centerRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_reject".tr,
                    style: CustomTextStyles.bodyMediumOnErrorContainer,
                  ),
                ),
                CustomElevatedButton(
                  width: 91.h,
                  text: "lbl_accept".tr,
                  margin: EdgeInsets.only(left: 36.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiveColumn(BuildContext context) {
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
                BlocSelector<RiderHomepageOneBloc, RiderHomepageOneState,
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
                            .read<RiderHomepageOneBloc>()
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
