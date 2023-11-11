import 'bloc/rider_homepage_two_bloc.dart';
import 'models/rider_homepage_two_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:anointed_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:anointed_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:anointed_s_application1/widgets/custom_elevated_button.dart';
import 'package:anointed_s_application1/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_bottomsheet/rider_homepage_bottomsheet.dart';

class RiderHomepageTwoScreen extends StatelessWidget {
  const RiderHomepageTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RiderHomepageTwoBloc>(
        create: (context) => RiderHomepageTwoBloc(RiderHomepageTwoState(
            riderHomepageTwoModelObj: RiderHomepageTwoModel()))
          ..add(RiderHomepageTwoInitialEvent()),
        child: RiderHomepageTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<RiderHomepageTwoBloc, RiderHomepageTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  height: 882.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topRight, children: [
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
                                      alignment: Alignment.center),
                                  _buildMainContent(context)
                                ]))),
                    _buildDeliveryRequest(context),
                    _buildPickedUp(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildMainContent(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomAppBar(
                  height: 48.v,
                  leadingWidth: 86.h,
                  leading: AppbarLeadingIconbutton(
                      imagePath: ImageConstant.imgMenu,
                      margin: EdgeInsets.only(left: 38.h)),
                  actions: [
                    AppbarTrailingImage(
                        imagePath: ImageConstant.imgGroup36934,
                        margin: EdgeInsets.fromLTRB(38.h, 14.v, 38.h, 13.v),
                        onTap: () {
                          onTapImage(context);
                        })
                  ]),
              SizedBox(height: 29.v),
              Container(
                  height: 148.v,
                  width: 364.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8.h))),
              SizedBox(height: 83.v),
              Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 99.v,
                      width: 249.h,
                      margin: EdgeInsets.only(right: 35.h),
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgAtomLocation,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                            alignment: Alignment.bottomLeft),
                        CustomImageView(
                            imagePath: ImageConstant.imgVector151,
                            height: 54.v,
                            width: 179.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 9.v)),
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
                                                              .circleBorder20),
                                              child: Container(
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.h))))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame51099,
                                          height: 20.adaptSize,
                                          width: 20.adaptSize,
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.only(top: 9.v))
                                    ])))
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildDeliveryRequest(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
            padding: EdgeInsets.only(top: 94.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("msg_delivery_request".tr,
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 13.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_21_bartus_street2".tr,
                            style: theme.textTheme.bodyMedium),
                        TextSpan(
                            text: "lbl_12km_2omins".tr,
                            style: CustomTextStyles
                                .titleSmallOverpassOnErrorContainerSemiBold)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 53.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 5.v, bottom: 4.v),
                                    child: Text("lbl_reject".tr,
                                        style: CustomTextStyles
                                            .bodyMediumOnErrorContainer)),
                                CustomElevatedButton(
                                    width: 91.h,
                                    text: "lbl_accept".tr,
                                    margin: EdgeInsets.only(left: 36.h))
                              ])))
                ])));
  }

  /// Section Widget
  Widget _buildPickedUp(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
            height: 148.v,
            width: 396.h,
            margin: EdgeInsets.only(bottom: 47.v),
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.only(right: 32.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 18.v),
                      decoration: AppDecoration.fillBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 4.h, top: 91.v, bottom: 2.v),
                                child: Text("lbl_20_mins_ago".tr,
                                    style: CustomTextStyles
                                        .bodyMediumGray50001_2)),
                            CustomOutlinedButton(
                                height: 32.v,
                                width: 87.h,
                                text: "lbl_picked_up".tr,
                                margin: EdgeInsets.only(top: 80.v),
                                buttonStyle:
                                    CustomButtonStyles.outlinePrimaryTL16,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumPrimary)
                          ]))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 19.v),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("msg_pending_delivery".tr,
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 18.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_21_bartus_street2".tr,
                                      style: CustomTextStyles
                                          .bodyMediumGray50001_1),
                                  TextSpan(
                                      text: "lbl_12km".tr,
                                      style: CustomTextStyles
                                          .titleSmallOverpassOnErrorContainerSemiBold)
                                ]),
                                textAlign: TextAlign.left)
                          ])))
            ])));
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [RiderHomepageBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.
  onTapImage(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => RiderHomepageBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
