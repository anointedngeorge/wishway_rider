import 'package:flutter/material.dart';
import 'package:anointed_s_application1/presentation/login_screen/login_screen.dart';
import 'package:anointed_s_application1/presentation/confirm_pickup_screen/confirm_pickup_screen.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_one_screen/rider_homepage_one_screen.dart';
import 'package:anointed_s_application1/presentation/sidebar_screen/sidebar_screen.dart';
import 'package:anointed_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:anointed_s_application1/presentation/frame_51127_screen/frame_51127_screen.dart';
import 'package:anointed_s_application1/presentation/rider_homepage_two_screen/rider_homepage_two_screen.dart';
import 'package:anointed_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String confirmPickupScreen = '/confirm_pickup_screen';

  static const String riderHomepageOneScreen = '/rider_homepage_one_screen';

  static const String sidebarScreen = '/sidebar_screen';

  static const String profileScreen = '/profile_screen';

  static const String frame51127Screen = '/frame_51127_screen';

  static const String riderHomepageTwoScreen = '/rider_homepage_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        confirmPickupScreen: ConfirmPickupScreen.builder,
        riderHomepageOneScreen: RiderHomepageOneScreen.builder,
        sidebarScreen: SidebarScreen.builder,
        profileScreen: ProfileScreen.builder,
        frame51127Screen: Frame51127Screen.builder,
        riderHomepageTwoScreen: RiderHomepageTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
