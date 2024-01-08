// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chat_item_model.dart';

/// This class defines the variables used in the [message_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MessageModel extends Equatable {
  MessageModel({this.chatItemList = const []}) {}

  List<ChatItemModel> chatItemList;

  MessageModel copyWith({List<ChatItemModel>? chatItemList}) {
    return MessageModel(
      chatItemList: chatItemList ?? this.chatItemList,
    );
  }

  @override
  List<Object?> get props => [chatItemList];
}
