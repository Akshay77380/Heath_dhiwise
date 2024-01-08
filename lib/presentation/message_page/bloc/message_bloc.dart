import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chat_item_model.dart';
import 'package:healthcare_dhiwise/presentation/message_page/models/message_model.dart';
part 'message_event.dart';
part 'message_state.dart';

/// A bloc that manages the state of a Message according to the event that is dispatched to it.
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc(MessageState initialState) : super(initialState) {
    on<MessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageInitialEvent event,
    Emitter<MessageState> emit,
  ) async {
    emit(state.copyWith(
        messageModelObj:
            state.messageModelObj?.copyWith(chatItemList: fillChatItemList())));
  }

  List<ChatItemModel> fillChatItemList() {
    return [
      ChatItemModel(
          drMarcusHorizon: ImageConstant.imgProfileThumbnail,
          drMarcusHorizon1: "Dr. Marcus Horizon",
          iDonTHaveAny: "I don,t have any fever, but headchace...",
          time: "10.24")
    ];
  }
}
