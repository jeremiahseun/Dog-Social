import 'package:dog_social/api/http_api.dart';
import 'package:dog_social/app/app.locator.dart';
import 'package:dog_social/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:dog_social/ui/views/signup/signup_view.form.dart';

class SignUpViewModel extends FormViewModel {
  final navigator = locator<NavigationService>();
  static String url = 'https://hookb.in/pzQ7aK2YoKURPnrrPdZY';
  final snackbar = locator<SnackbarService>();
  final apiService = HttpApiService();

  bool isLoading = false;
  bool password = false;

  loading(status) {
    isLoading = status;
    notifyListeners();
  }

  goHome() {
    navigator.navigateTo(Routes.navBarView);
  }

  showPassword() {
    password = !password;
    notifyListeners();
  }

  goBack() {
    navigator.back();
  }

  Future registerUser() async {
    loading(true);
    if (fullnameValue == null && emailValue == null && passwordValue == null) {
      loading(false);
      // FocusScope.of(context).unfocus();
      snackbar.showSnackbar(
        duration: const Duration(seconds: 3),
        message: 'Please fill all fields.',
      );

      return;
    }
    final loginData = {
      'fullname': fullnameValue,
      'email': emailValue,
      'password': passwordValue,
    };
    final response = await apiService.post(url, data: loginData);

    if (response!.statusCode == 200) {
      snackbar.showSnackbar(
        message: 'Successfully logged in',
        duration: const Duration(seconds: 3),
      );
      loading(false);
      navigator.navigateTo(Routes.navBarView);
    } else {
      loading(false);
      snackbar.showSnackbar(
        message: 'An error occured. Try again later',
        duration: const Duration(seconds: 2),
      );
    }
    print(response);
  }

  @override
  void setFormStatus() {}
}
