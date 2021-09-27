import 'package:dog_social/app/app.locator.dart';
import 'package:dog_social/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final navigator = locator<NavigationService>();

  void navigateToChat() {
    navigator.navigateTo(Routes.chats);
  }
  void goBack() {
    navigator.back();
  }
}
