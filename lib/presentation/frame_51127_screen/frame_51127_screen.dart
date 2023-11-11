import 'bloc/frame_51127_bloc.dart';
import 'models/frame_51127_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:anointed_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:anointed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anointed_s_application1/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class Frame51127Screen extends StatelessWidget {
  const Frame51127Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame51127Bloc>(
      create: (context) => Frame51127Bloc(Frame51127State(
        frame51127ModelObj: Frame51127Model(),
      ))
        ..add(Frame51127InitialEvent()),
      child: Frame51127Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 364.h,
          child: Column(
            children: [
              _buildFrame1(context),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 15.v),
                  _buildFrame3(context),
                  SizedBox(height: 15.v),
                  _buildFrame5(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 13.v),
          CustomAppBar(
            height: 24.v,
            leadingWidth: 37.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconCurrentlocation,
              margin: EdgeInsets.only(left: 13.h),
            ),
            title: AppbarTitle(
              text: "msg_21_bartus_street3".tr,
              margin: EdgeInsets.only(left: 16.h),
            ),
          ),
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgOverflowMenu,
            height: 20.v,
            width: 24.h,
            margin: EdgeInsets.only(left: 13.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: _buildFrameFifty(
              context,
              userLocation: "msg_21_bartus_street3".tr,
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineBlueGray,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 40.h,
                    top: 1.v,
                  ),
                  child: Text(
                    "msg_pickup_20_minutes".tr,
                    style: CustomTextStyles.bodySmallPrimary,
                  ),
                ),
                Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFrame(
            context,
            pendingLabel: "lbl_pending".tr,
            oneThousandFiveHundredLabel: "lbl_1_500".tr,
          ),
          SizedBox(height: 13.v),
          BlocSelector<Frame51127Bloc, Frame51127State, String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: CustomRadioButton(
                  text: "msg_21_bartus_street3".tr,
                  value: "msg_21_bartus_street3".tr ?? "",
                  groupValue: radioGroup,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    context
                        .read<Frame51127Bloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  },
                ),
              );
            },
          ),
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgOverflowMenu,
            height: 20.v,
            width: 24.h,
            margin: EdgeInsets.only(left: 13.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: _buildFrameFifty(
              context,
              userLocation: "msg_21_bartus_street3".tr,
            ),
          ),
          SizedBox(height: 12.v),
          _buildMoleculeDeliveryType(
            context,
            time: "msg_waiting_50_mins".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack9001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFrame(
            context,
            pendingLabel: "lbl_pending".tr,
            oneThousandFiveHundredLabel: "lbl_1_500".tr,
          ),
          SizedBox(height: 13.v),
          BlocSelector<Frame51127Bloc, Frame51127State, String?>(
            selector: (state) => state.radioGroup1,
            builder: (context, radioGroup1) {
              return Padding(
                padding: EdgeInsets.only(left: 13.h),
                child: CustomRadioButton(
                  text: "msg_21_bartus_street3".tr,
                  value: "msg_21_bartus_street3".tr ?? "",
                  groupValue: radioGroup1,
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  onChange: (value) {
                    context
                        .read<Frame51127Bloc>()
                        .add(ChangeRadioButton1Event(value: value));
                  },
                ),
              );
            },
          ),
          SizedBox(height: 4.v),
          CustomImageView(
            imagePath: ImageConstant.imgOverflowMenu,
            height: 20.v,
            width: 24.h,
            margin: EdgeInsets.only(left: 13.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: _buildFrameFifty(
              context,
              userLocation: "msg_21_bartus_street3".tr,
            ),
          ),
          SizedBox(height: 12.v),
          _buildMoleculeDeliveryType(
            context,
            time: "msg_waiting_50_mins".tr,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameFifty(
    BuildContext context, {
    required String userLocation,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIconLocation,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 3.v,
            bottom: 2.v,
          ),
          child: Text(
            userLocation,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String pendingLabel,
    required String oneThousandFiveHundredLabel,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
            child: Text(
              pendingLabel,
              style: CustomTextStyles.bodySmallGray50001.copyWith(
                color: appTheme.gray50001,
              ),
            ),
          ),
          Text(
            oneThousandFiveHundredLabel,
            style: CustomTextStyles.bodySmallOverpassBluegray100.copyWith(
              color: appTheme.blueGray100,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMoleculeDeliveryType(
    BuildContext context, {
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconNotes,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 3.v,
            ),
            child: Text(
              time,
              style: theme.textTheme.bodySmall!.copyWith(
                color: appTheme.red800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
