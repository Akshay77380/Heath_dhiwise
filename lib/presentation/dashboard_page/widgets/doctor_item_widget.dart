import '../models/doctor_item_model.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dhiwise/core/app_export.dart';

// ignore: must_be_immutable
class DoctorItemWidget extends StatelessWidget {
  DoctorItemWidget(
    this.doctorItemModelObj, {
    Key? key,
    this.onTapDoctor,
  }) : super(
          key: key,
        );

  DoctorItemModel doctorItemModelObj;

  VoidCallback? onTapDoctor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118.h,
      child: GestureDetector(
        onTap: () {
          onTapDoctor!.call();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 10.v,
          ),
          decoration: AppDecoration.outlineTeal.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 11.v),
              CustomImageView(
                imagePath: doctorItemModelObj?.drMarcusHorizo,
                height: 68.adaptSize,
                width: 68.adaptSize,
                radius: BorderRadius.circular(
                  34.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  doctorItemModelObj.drMarcusHorizo1!,
                  style: CustomTextStyles.labelLargeOnPrimarySemiBold,
                ),
              ),
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Text(
                  doctorItemModelObj.chardiologist!,
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                  children: [
                    Container(
                      width: 26.h,
                      margin: EdgeInsets.only(bottom: 1.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSignal,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.only(bottom: 2.v),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Text(
                              doctorItemModelObj.ratting!,
                              style: CustomTextStyles.labelSmallCyan300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 23.h,
                        top: 3.v,
                      ),
                      child: Text(
                        doctorItemModelObj.distance!,
                        style: CustomTextStyles.labelSmallBluegray200,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
