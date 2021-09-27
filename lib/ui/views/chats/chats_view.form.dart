// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String ChatValueKey = 'chat';

mixin $Chats on StatelessWidget {
  final TextEditingController chatController = TextEditingController();
  final FocusNode chatFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    chatController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            ChatValueKey: chatController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    chatController.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get chatValue => this.formValueMap[ChatValueKey];

  bool get hasChat => this.formValueMap.containsKey(ChatValueKey);
}

extension Methods on FormViewModel {}
