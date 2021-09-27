import 'package:dog_social/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChatsViewModel extends BaseViewModel {
  final navigator = locator<NavigationService>();

  bool isWriting = false;

  void onChanged(String value) {
    value.isNotEmpty ? isWriting = true : isWriting = false;
    notifyListeners();
  }

  navigateBack() {
    navigator.back();
  }
}
