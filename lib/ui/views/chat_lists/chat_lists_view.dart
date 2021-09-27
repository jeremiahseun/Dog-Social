import 'package:dog_social/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'chat_lists_viewmodel.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatListViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            key: const Key("Scroll ListView"),
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Chat',
                      style: AppStyles.bigText(),
                    ),
                    const SizedBox(height: 10),
                    AppStyles.textBar(
                        label: 'Search',
                        prefixIcon: const Icon(Icons.search_rounded),
                        suffixIcon: const Icon(Icons.settings_suggest_outlined))
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () => model.enterChat(),
                        child: model.chatList[index]);
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      thickness: 2,
                    );
                  },
                  itemCount: model.chatList.length)
            ],
          ),
        ),
      ),
      viewModelBuilder: () => ChatListViewModel(),
    );
  }
}
