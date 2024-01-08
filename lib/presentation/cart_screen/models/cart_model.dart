// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'drugs2_item_model.dart';

/// This class defines the variables used in the [cart_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CartModel extends Equatable {
  CartModel({this.drugs2ItemList = const []}) {}

  List<Drugs2ItemModel> drugs2ItemList;

  CartModel copyWith({List<Drugs2ItemModel>? drugs2ItemList}) {
    return CartModel(
      drugs2ItemList: drugs2ItemList ?? this.drugs2ItemList,
    );
  }

  @override
  List<Object?> get props => [drugs2ItemList];
}
