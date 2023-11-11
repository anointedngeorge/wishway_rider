import 'bloc/confirm_pickup_bloc.dart';
import 'models/confirm_pickup_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ConfirmPickupScreen extends StatelessWidget {
  const ConfirmPickupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConfirmPickupBloc>(
      create: (context) => ConfirmPickupBloc(ConfirmPickupState(
        confirmPickupModelObj: ConfirmPickupModel(),
      ))
        ..add(ConfirmPickupInitialEvent()),
      child: ConfirmPickupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ConfirmPickupBloc, ConfirmPickupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: 327.h,
              padding: EdgeInsets.symmetric(
                horizontal: 68.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVector,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                  ),
                  SizedBox(height: 23.v),
                  Text(
                    "msg_pick_up_accepted".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 23.v),
                  SizedBox(
                    width: 190.h,
                    child: Text(
                      "msg_go_ahead_and_arrange".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallOverpassGray50001,
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildOkButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildOkButton(BuildContext context) {
    return CustomElevatedButton(
      height: 45.v,
      text: "lbl_ok".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryBL8,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }
}
