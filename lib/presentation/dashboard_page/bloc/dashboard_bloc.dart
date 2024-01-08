import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortyseven_item_model.dart';
import '../models/doctor_item_model.dart';
import 'package:healthcare_dhiwise/presentation/dashboard_page/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  List<FortysevenItemModel> fillFortysevenItemList() {
    return [
      FortysevenItemModel(ticket: ImageConstant.imgTicket),
      FortysevenItemModel(ticket: ImageConstant.imgCalculator),
      FortysevenItemModel(ticket: ImageConstant.imgAmbulance),
      FortysevenItemModel(ticket: ImageConstant.imgCalendar)
    ];
  }

  List<DoctorItemModel> fillDoctorItemList() {
    return [
      DoctorItemModel(
          drMarcusHorizo: ImageConstant.imgEllipse27image,
          drMarcusHorizo1: "Dr. Marcus Horizo",
          chardiologist: "Chardiologist",
          ratting: "4,7",
          distance: "800m away"),
      DoctorItemModel(
          drMarcusHorizo: ImageConstant.imgEllipse27image68x68,
          drMarcusHorizo1: "Dr. Maria Elena",
          chardiologist: "Psychologist",
          ratting: "4,9",
          distance: "1,5km away"),
      DoctorItemModel(
          drMarcusHorizo: ImageConstant.imgEllipse27image1,
          drMarcusHorizo1: "Dr. Stevi Jessi",
          chardiologist: "Orthopedist",
          ratting: "4,8",
          distance: "2km away")
    ];
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
            fortysevenItemList: fillFortysevenItemList(),
            doctorItemList: fillDoctorItemList())));
  }
}
