import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeMulishOnError =>
      theme.textTheme.bodyLarge!.mulish.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 16.fSize,
      );
  static get bodyLargeMulishSecondaryContainer =>
      theme.textTheme.bodyLarge!.mulish.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 16.fSize,
      );
  static get bodyLargeOutfitYellow900 =>
      theme.textTheme.bodyLarge!.outfit.copyWith(
        color: appTheme.yellow900,
        fontSize: 16.fSize,
      );
  static get bodyLargeOutfitYellow90016 =>
      theme.textTheme.bodyLarge!.outfit.copyWith(
        color: appTheme.yellow900,
        fontSize: 16.fSize,
      );
  static get bodyMediumGray50001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray50001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumGray50001_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodyMediumMulishGray800 =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumMulishPrimary =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOnErrorContainer15 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallGray50001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallOutfitBlack900 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: appTheme.black900.withOpacity(0.4),
      );
  static get bodySmallOutfitGray500 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallOutfitOnPrimaryContainer =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallOutfitYellow900 =>
      theme.textTheme.bodySmall!.outfit.copyWith(
        color: appTheme.yellow900,
        fontSize: 10.fSize,
      );
  static get bodySmallOverpassBluegray100 =>
      theme.textTheme.bodySmall!.overpass.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodySmallOverpassGray50001 =>
      theme.textTheme.bodySmall!.overpass.copyWith(
        color: appTheme.gray50001,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Headline text style
  static get headlineLargeOutfitBlack900 =>
      theme.textTheme.headlineLarge!.outfit.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallOutfitYellow900 =>
      theme.textTheme.headlineSmall!.outfit.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get titleLargeOverpassOnErrorContainer =>
      theme.textTheme.titleLarge!.overpass.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMediumGray50001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50001,
        fontSize: 16.fSize,
      );
  static get titleMediumOutfit => theme.textTheme.titleMedium!.outfit.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumOutfit16 =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumOutfitMedium =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOutfitYellow900 =>
      theme.textTheme.titleMedium!.outfit.copyWith(
        color: appTheme.yellow900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOverpassOnErrorContainer =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOverpassOnErrorContainerSemiBold =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOverpassPrimary =>
      theme.textTheme.titleSmall!.overpass.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get outfit {
    return copyWith(
      fontFamily: 'Outfit',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }
}
