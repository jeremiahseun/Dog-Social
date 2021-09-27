import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:dog_social/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'chats_view.form.dart';
import 'chats_viewmodel.dart';

@FormView(fields: [FormTextField(name: 'chat')])
// ignore: must_be_immutable
class Chats extends StatelessWidget with $Chats {
  Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ChatsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            CustomAppBar(model: model),
            Flexible(
              child: messageList(context),
            ),
            chatControls(model),
          ],
        ),
      ),
      viewModelBuilder: () => ChatsViewModel(),
    );
  }

  Widget messageList(context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      itemCount: 7,
      itemBuilder: (context, index) {
        return Column(
          children: [
            chatMessageItem(context, index),
            index.isOdd
                ? DateChip(
                    date: DateTime(2021, 5, 7),
                    color: Colors.transparent,
                  )
                : Container(),
          ],
        );
      },
    );
  }

  Widget chatMessageItem(context, int index) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        alignment: index.isEven ? Alignment.centerRight : Alignment.centerLeft,
        child: index.isEven ? senderLayout(context) : receiverLayout(context),
      ),
    );
  }

  Widget senderLayout(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width * .6),
      child: BubbleSpecialOne(
        text:
            'Hey, Alex! Nice to meet you! \nI can help you. \nI surely have the perfect one for you.',
        isSender: true,
        tail: true,
        color: const Color(0xffFB724C),
        textStyle: AppStyles.smallText().copyWith(color: Colors.white),
      ),
    );
  }

  Widget receiverLayout(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width * .6),
      child: BubbleSpecialOne(
        text:
            'That\'s great! \nI’d like to hire a walker and you’re perfect one for me. \nCan you help me out?',
        isSender: false,
        tail: true,
        color: const Color(0xffECEEF1),
        textStyle: AppStyles.smallText().copyWith(color: Colors.black),
      ),
    );
  }

  Widget chatControls(model) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: const Color(0xffF5F5F5)),
              child: const Icon(Icons.add, color: Colors.orange),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextField(
              controller: chatController,
              onChanged: model.onChanged,
              decoration: InputDecoration(
                hintText: "Aa",
                hintStyle: const TextStyle(color: Colors.grey),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14.0),
                    ),
                    borderSide: BorderSide.none),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                filled: true,
                fillColor: const Color(0xffF5F5F5),
                suffixIcon: model.isWriting
                    ? Container(
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                            color: Colors.transparent, shape: BoxShape.circle),
                        child: IconButton(
                          icon: const Icon(
                            Icons.send,
                            color: Colors.orange,
                            size: 15,
                          ),
                          onPressed: () {},
                        ))
                    : GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.mic,
                          color: Colors.black,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  final ChatsViewModel? model;
  const CustomAppBar({
    Key? key,
    this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => model!.navigateBack(),
                icon: const Icon(
                  Icons.arrow_back,
                ),
              ),
              const SizedBox(height: 15),
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://i.barkpost.com/wp-content/uploads/2014/09/dogwalker.jpg?q=70&fit=crop&crop=entropy&w=808&h=500',
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alex Murray",
                    style: AppStyles.buttonText(),
                  ),
                  Row(
                    children: [
                      Container(
                          height: 5,
                          width: 5,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green)),
                      const SizedBox(width: 5),
                      Text(
                        "Online",
                        style:
                            AppStyles.mSmallText().copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          //
          IconButton(
              onPressed: () {}, icon: Icon(Icons.phone, color: Colors.black))
        ],
      ),
    );
  }
}
