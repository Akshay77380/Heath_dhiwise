// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fortyseven_item_model.dart';
import 'doctor_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({
    this.fortysevenItemList = const [],
    this.doctorItemList = const [],
  }) {}

  List<FortysevenItemModel> fortysevenItemList;

  List<DoctorItemModel> doctorItemList;

  DashboardModel copyWith({
    List<FortysevenItemModel>? fortysevenItemList,
    List<DoctorItemModel>? doctorItemList,
  }) {
    return DashboardModel(
      fortysevenItemList: fortysevenItemList ?? this.fortysevenItemList,
      doctorItemList: doctorItemList ?? this.doctorItemList,
    );
  }

  @override
  List<Object?> get props => [fortysevenItemList, doctorItemList];
}
