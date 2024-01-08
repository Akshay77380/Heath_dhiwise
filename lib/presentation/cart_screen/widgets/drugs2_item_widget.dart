import '../models/drugs2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dhiwise/core/app_export.dart';
import 'package:healthcare_dhiwise/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Drugs2ItemWidget extends StatelessWidget {
  Drugs2ItemWidget(
    this.drugs2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Drugs2ItemModel drugs2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.h),
      decoration: AppDecoration.outlineTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: drugs2ItemModelObj?.oBHCombi,
            height: 72.adaptSize,
            width: 72.adaptSize,
            radius: BorderRadius.circular(
              36.h,
            ),
            margin: EdgeInsets.only(
              left: 6.h,
              top: 2.v,
              bottom: 17.v,
            ),
          ),
          Spacer(
            flex: 56,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  drugs2ItemModelObj.oBHCombi1!,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 2.v),
                Text(
                  drugs2ItemModelObj.measurement!,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 25.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgComponent3,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(bottom: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Text(
                        drugs2ItemModelObj.counter!,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 13.h,
                        bottom: 1.v,
                      ),
                      child: CustomIconButton(
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        padding: EdgeInsets.all(5.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFacebookPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(
            flex: 44,
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgThumbsUpGray500,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 47.v),
                Text(
                  drugs2ItemModelObj.price!,
                  style: CustomTextStyles.titleMedium18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
