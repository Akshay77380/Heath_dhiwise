import '../settings_page/widgets/settings_item_widget.dart';
import 'bloc/settings_bloc.dart';
import 'models/settings_item_model.dart';
import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dhiwise/core/app_export.dart';
import 'package:healthcare_dhiwise/widgets/app_bar/custom_app_bar.dart';
import 'package:healthcare_dhiwise/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (context) => SettingsBloc(SettingsState(
        settingsModelObj: SettingsModel(),
      ))
        ..add(SettingsInitialEvent()),
      child: SettingsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.teal300,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 226.v,
                width: 290.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_amelia_renata".tr,
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ),
                    _buildProfile1(context),
                  ],
                ),
              ),
              SizedBox(height: 38.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildSettingOption(
                      context,
                      appointment: "lbl_my_saved".tr,
                    ),
                    SizedBox(height: 13.v),
                    Divider(
                      color: appTheme.gray5001,
                    ),
                    SizedBox(height: 13.v),
                    _buildSettingOption(
                      context,
                      appointment: "lbl_appointment".tr,
                    ),
                    SizedBox(height: 13.v),
                    Divider(
                      color: appTheme.gray5001,
                    ),
                    SizedBox(height: 13.v),
                    _buildSettingOption(
                      context,
                      appointment: "lbl_payment_method".tr,
                    ),
                    SizedBox(height: 13.v),
                    Divider(
                      color: appTheme.gray5001,
                    ),
                    SizedBox(height: 13.v),
                    _buildSettingOption(
                      context,
                      appointment: "lbl_faqs".tr,
                    ),
                    SizedBox(height: 13.v),
                    Divider(
                      color: appTheme.gray5001,
                    ),
                    SizedBox(height: 13.v),
                    _buildSettingOption(
                      context,
                      appointment: "lbl_help".tr,
                    ),
                    SizedBox(height: 24.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 61.v,
      actions: [
        Padding(
          padding: EdgeInsets.all(20.h),
          child: Column(
            children: [
              Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Container(
                height: 4.adaptSize,
                width: 4.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    2.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return SizedBox(
      height: 80.adaptSize,
      width: 80.adaptSize,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgProfile,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(
                right: 4.h,
                bottom: 5.v,
              ),
              padding: EdgeInsets.all(3.h),
              decoration: AppDecoration.white.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder6,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgCamera,
                height: 10.adaptSize,
                width: 10.adaptSize,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile1(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildProfile(context),
          SizedBox(height: 71.v),
          SizedBox(
            height: 75.v,
            child: BlocSelector<SettingsBloc, SettingsState, SettingsModel?>(
              selector: (state) => state.settingsModelObj,
              builder: (context, settingsModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.5.h),
                      child: SizedBox(
                        height: 44.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                          color: appTheme.cyan100,
                        ),
                      ),
                    );
                  },
                  itemCount: settingsModelObj?.settingsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SettingsItemModel model =
                        settingsModelObj?.settingsItemList[index] ??
                            SettingsItemModel();
                    return SettingsItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSettingOption(
    BuildContext context, {
    required String appointment,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 43.adaptSize,
          width: 43.adaptSize,
          padding: EdgeInsets.all(9.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgMegaphone,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 13.v,
            bottom: 9.v,
          ),
          child: Text(
            appointment,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 9.v,
          ),
        ),
      ],
    );
  }
}
