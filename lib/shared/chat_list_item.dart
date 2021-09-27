import 'package:dog_social/shared/styles.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final String? name;
  final String? message;
  final bool unread;
  const ChatListItem({
    Key? key, @required this.name, @required this.message, this.unread = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name!,
                style: AppStyles.chatName(),
              ),
              Text(
                message!,
                style: AppStyles.mediumText(),
              ),
            ],
          ),
          const Spacer(),
         unread ? const CircleAvatar(
            radius: 5,
            backgroundColor: Colors.red,
          ) : Container(),
        ],
      ),
    );
  }
}
