import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/custom_elevated_button.dart';
import 'package:anointed_s_application1/widgets/custom_outlined_button.dart';
import 'package:anointed_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 8.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAtomDriverprofile,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(40.h)),
                  SizedBox(height: 16.v),
                  Text("msg_princewill_okafor".tr,
                      style:
                          CustomTextStyles.titleSmallOverpassOnErrorContainer),
                  SizedBox(height: 9.v),
                  Text("msg_princewillokafor_gmail_com".tr,
                      style: CustomTextStyles.bodyMediumOnError),
                  SizedBox(height: 26.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgStar124x24,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 2.v, bottom: 3.v),
                        child: Text("lbl_5_0_21".tr,
                            style: CustomTextStyles.bodyMediumOnErrorContainer))
                  ]),
                  SizedBox(height: 24.v),
                  CustomOutlinedButton(
                      width: 132.h,
                      text: "lbl_rider".tr,
                      buttonStyle: CustomButtonStyles.outlinePrimary),
                  SizedBox(height: 22.v),
                  _buildOnlineSwitch(context),
                  SizedBox(height: 44.v),
                  _buildVideoEarnings(context),
                  SizedBox(height: 53.v),
                  _buildLocationDeliveryHistory(context),
                  SizedBox(height: 57.v),
                  _buildImageHelpSupport(context),
                  SizedBox(height: 58.v),
                  _buildSettingsArrowRight(context),
                  SizedBox(height: 95.v),
                  CustomElevatedButton(
                      height: 23.v,
                      width: 95.h,
                      text: "lbl_logout".tr,
                      leftIcon: Container(
                          margin: EdgeInsets.only(right: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgVectorPrimary,
                              height: 20.adaptSize,
                              width: 20.adaptSize)),
                      buttonStyle: CustomButtonStyles.none,
                      buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                      onPressed: () {
                        onTapLogout(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildOnlineSwitch(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_online".tr, style: theme.textTheme.headlineSmall),
          BlocSelector<ProfileBloc, ProfileState, bool?>(
              selector: (state) => state.isSelectedSwitch,
              builder: (context, isSelectedSwitch) {
                return CustomSwitch(
                    margin: EdgeInsets.only(top: 9.v, bottom: 3.v),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<ProfileBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildVideoEarnings(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgVideoCamera,
          height: 26.adaptSize,
          width: 26.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 22.h),
          child:
              Text("lbl_earnings".tr, style: CustomTextStyles.titleMedium18)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 9.v,
          width: 4.h,
          margin: EdgeInsets.symmetric(vertical: 8.v))
    ]);
  }

  /// Section Widget
  Widget _buildLocationDeliveryHistory(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgLocation,
              height: 19.v,
              width: 16.h,
              margin: EdgeInsets.only(top: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: Text("msg_delivery_history".tr,
                  style: CustomTextStyles.titleMedium18)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 9.v,
              width: 4.h,
              margin: EdgeInsets.only(top: 7.v, bottom: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildImageHelpSupport(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgGroup36863,
              height: 19.adaptSize,
              width: 19.adaptSize,
              margin: EdgeInsets.only(top: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Text("lbl_help_support".tr,
                  style: CustomTextStyles.titleMedium18)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 9.v,
              width: 4.h,
              margin: EdgeInsets.only(top: 7.v, bottom: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildSettingsArrowRight(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 4.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgSettings,
              height: 19.v,
              width: 18.h,
              margin: EdgeInsets.only(top: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Text("lbl_settings".tr,
                  style: CustomTextStyles.titleMedium18)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 9.v,
              width: 4.h,
              margin: EdgeInsets.symmetric(vertical: 6.v))
        ]));
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapLogout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginScreen,
    );
  }
}
