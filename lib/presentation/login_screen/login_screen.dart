import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:anointed_s_application1/core/app_export.dart';
import 'package:anointed_s_application1/core/utils/validation_functions.dart';
import 'package:anointed_s_application1/widgets/custom_elevated_button.dart';
import 'package:anointed_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_four_dialog/rider_homepage_four_dialog.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.h, vertical: 44.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup36764,
                          height: 86.v,
                          width: 100.h),
                      SizedBox(height: 17.v),
                      Text("msg_welcome_to_wishway".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 9.v),
                      Text("msg_we_keep_your_data".tr,
                          style: CustomTextStyles
                              .bodyLargeMulishSecondaryContainer),
                      Spacer(),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("msg_login_to_continue".tr,
                              style: CustomTextStyles
                                  .titleLargeOverpassOnErrorContainer)),
                      SizedBox(height: 22.v),
                      _buildLoginForm(context),
                      SizedBox(height: 23.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("lbl_password".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 15.v),
                      BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "msg_enter_password_here".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<LoginBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        12.h, 16.v, 8.h, 16.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIconlyLightoutlineHide,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize))),
                            suffixConstraints: BoxConstraints(maxHeight: 56.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: state.isShowPassword,
                            contentPadding: EdgeInsets.only(
                                left: 15.h, top: 17.v, bottom: 17.v));
                      }),
                      SizedBox(height: 20.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text("msg_forgot_password".tr,
                              style: CustomTextStyles.bodyMediumMulishPrimary)),
                      SizedBox(height: 52.v),
                      CustomElevatedButton(
                          height: 64.v,
                          text: "lbl_login".tr,
                          rightIcon: Container(
                              margin: EdgeInsets.only(left: 30.h),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRightArrow24Outline,
                                  height: 32.adaptSize,
                                  width: 32.adaptSize)),
                          buttonStyle: CustomButtonStyles.fillPrimary,
                          buttonTextStyle:
                              CustomTextStyles.titleLargeOnErrorContainer,
                          onPressed: () {
                            onTapLogin(context);
                          }),
                      SizedBox(height: 34.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_dont_have_an_account".tr,
                                style:
                                    CustomTextStyles.bodyMediumMulishGray800),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_sign_up_here".tr,
                                    style: CustomTextStyles
                                        .titleSmallOverpassPrimary))
                          ]),
                      SizedBox(height: 27.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("lbl_email".tr, style: theme.textTheme.titleLarge),
      SizedBox(height: 15.v),
      BlocSelector<LoginBloc, LoginState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "msg_enter_email_here".tr,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                });
          })
    ]);
  }

  /// Displays a dialog with the [RiderHomepageFourDialog] content.
  onTapLogin(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: RiderHomepageFourDialog.builder(context),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
