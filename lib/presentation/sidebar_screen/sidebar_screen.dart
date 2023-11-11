import 'bloc/sidebar_bloc.dart';
import 'models/sidebar_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:anointed_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:anointed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anointed_s_application1/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SidebarBloc>(
      create: (context) => SidebarBloc(SidebarState(
        sidebarModelObj: SidebarModel(),
      ))
        ..add(SidebarInitialEvent()),
      child: SidebarScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray900,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "msg_princewill_okafor".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "msg_princewillokafor_gmail_com".tr,
                      style: CustomTextStyles.bodyMediumGray50001,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar1,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 2.v,
                            bottom: 3.v,
                          ),
                          child: Text(
                            "lbl_5_0_21".tr,
                            style:
                                CustomTextStyles.bodyMediumOnErrorContainer15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 66.v),
                  _buildOnlineSwitch(context),
                  SizedBox(height: 31.v),
                  _buildVideoCameraEarnings(context),
                  SizedBox(height: 26.v),
                  _buildLocationDeliveryHistory(context),
                  SizedBox(height: 26.v),
                  _buildInfoHelpSupport(context),
                  SizedBox(height: 26.v),
                  _buildSettings(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Container(
        height: 114.adaptSize,
        width: 114.adaptSize,
        margin: EdgeInsets.only(left: 26.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 114.adaptSize,
                width: 114.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onErrorContainer,
                  borderRadius: BorderRadius.circular(
                    57.h,
                  ),
                ),
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgEllipse40,
              margin: EdgeInsets.fromLTRB(4.h, 3.v, 3.h, 3.v),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgArrowLeft,
          margin: EdgeInsets.fromLTRB(21.h, 5.v, 21.h, 73.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildOnlineSwitch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 27.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_online".tr,
            style: theme.textTheme.headlineMedium,
          ),
          BlocSelector<SidebarBloc, SidebarState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 10.v,
                  bottom: 3.v,
                ),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<SidebarBloc>()
                      .add(ChangeSwitchEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVideoCameraEarnings(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 26.adaptSize,
            width: 26.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "lbl_earnings".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 3.h,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLocationDeliveryHistory(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLocation,
            height: 21.v,
            width: 18.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              bottom: 2.v,
            ),
            child: Text(
              "msg_delivery_history".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 8.h,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoHelpSupport(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgInfo,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 4.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_help_support".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 6.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 20.v,
            width: 19.h,
            margin: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.h),
            child: Text(
              "lbl_settings".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 10.v,
            width: 4.h,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 4.h,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }
}
