import 'package:dog_social/app/app.locator.dart';
import 'package:dog_social/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final navigator = locator<NavigationService>();

  navigateToSignUp() {
    navigator.navigateTo(Routes.signUp);
  }
}
