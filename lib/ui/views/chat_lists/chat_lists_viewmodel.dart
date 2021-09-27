import 'package:dog_social/app/app.locator.dart';
import 'package:dog_social/app/app.router.dart';
import 'package:dog_social/shared/chat_list_item.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChatListViewModel extends BaseViewModel {
  final navigator = locator<NavigationService>();

  enterChat() {
    navigator.navigateTo(Routes.chats);
  }

  List<ChatListItem> chatList = [
    const ChatListItem(
      name: 'Matt Chapman',
      message: "You fed the dog?",
      unread: true,
    ),
    const ChatListItem(
        name: 'Will Knowles',
        message: "Hey! How's your dog doing?",
        unread: true),
    const ChatListItem(name: 'Ryan Bond', message: "Let's go out"),
    const ChatListItem(name: 'Matt Chapman', message: "You fed the dog?"),
    const ChatListItem(name: 'Laura Pierce', message: "How's your dog doing?"),
    const ChatListItem(
      name: 'Ryan Bond',
      message: "Let's go out",
      unread: true,
    ),
    const ChatListItem(
        name: 'Will Knowles', message: "Hey! How's your dog doing?"),
    const ChatListItem(name: 'Hazel Reed', message: "Hey! Long time no see?"),
    const ChatListItem(
        name: 'Matt Chapman', message: "You fed the dog?", unread: true),
  ];
}
