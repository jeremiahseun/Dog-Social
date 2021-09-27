import 'package:dog_social/ui/views/chat_lists/chat_lists_view.dart';
import 'package:dog_social/ui/views/chats/chats_view.dart';
import 'package:dog_social/ui/views/home/home_view.dart';
import 'package:dog_social/ui/views/navbar/navbar_view.dart';
import 'package:dog_social/ui/views/onboading/onboarding_view.dart';
import 'package:dog_social/ui/views/profile/profile_view.dart';
import 'package:dog_social/ui/views/profile_nav/profile_nav_view.dart';
import 'package:dog_social/ui/views/signup/signup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: OnboardingView, initial: true),
    CupertinoRoute(page: SignUp),
    CupertinoRoute(page: Home),
    CupertinoRoute(page: Profile),
    CupertinoRoute(page: ProfileNavView),
    CupertinoRoute(page: ChatList),
    CupertinoRoute(page: Chats),
    CupertinoRoute(page: NavBarView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: SnackbarService),
  ]
)

class AppSetup {

}