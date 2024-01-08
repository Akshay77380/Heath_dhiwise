import '../models/fortyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dhiwise/core/app_export.dart';
import 'package:healthcare_dhiwise/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class FortysevenItemWidget extends StatelessWidget {
  FortysevenItemWidget(
    this.fortysevenItemModelObj, {
    Key? key,
    this.onTapBtnTicket,
  }) : super(
          key: key,
        );

  FortysevenItemModel fortysevenItemModelObj;

  VoidCallback? onTapBtnTicket;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 71.h,
      child: CustomIconButton(
        height: 71.adaptSize,
        width: 71.adaptSize,
        padding: EdgeInsets.all(16.h),
        decoration: IconButtonStyleHelper.fillCyan,
        onTap: () {
          onTapBtnTicket!.call();
        },
        child: CustomImageView(
          imagePath: fortysevenItemModelObj?.ticket,
        ),
      ),
    );
  }
}
