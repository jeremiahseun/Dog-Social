// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../shared/dog_walker.dart';
import '../ui/views/chat_lists/chat_lists_view.dart';
import '../ui/views/chats/chats_view.dart';
import '../ui/views/home/home_view.dart';
import '../ui/views/navbar/navbar_view.dart';
import '../ui/views/onboading/onboarding_view.dart';
import '../ui/views/profile/profile_view.dart';
import '../ui/views/profile_nav/profile_nav_view.dart';
import '../ui/views/signup/signup_view.dart';

class Routes {
  static const String onboardingView = '/';
  static const String signUp = '/sign-up';
  static const String home = '/Home';
  static const String profile = '/Profile';
  static const String profileNavView = '/profile-nav-view';
  static const String chatList = '/chat-list';
  static const String chats = '/Chats';
  static const String navBarView = '/nav-bar-view';
  static const all = <String>{
    onboardingView,
    signUp,
    home,
    profile,
    profileNavView,
    chatList,
    chats,
    navBarView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.onboardingView, page: OnboardingView),
    RouteDef(Routes.signUp, page: SignUp),
    RouteDef(Routes.home, page: Home),
    RouteDef(Routes.profile, page: Profile),
    RouteDef(Routes.profileNavView, page: ProfileNavView),
    RouteDef(Routes.chatList, page: ChatList),
    RouteDef(Routes.chats, page: Chats),
    RouteDef(Routes.navBarView, page: NavBarView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    OnboardingView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const OnboardingView(),
        settings: data,
      );
    },
    SignUp: (data) {
      var args = data.getArgs<SignUpArguments>(
        orElse: () => SignUpArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignUp(key: args.key),
        settings: data,
      );
    },
    Home: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const Home(),
        settings: data,
      );
    },
    Profile: (data) {
      var args = data.getArgs<ProfileArguments>(
        orElse: () => ProfileArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Profile(
          key: args.key,
          index: args.index,
          dogWalkers: args.dogWalkers,
        ),
        settings: data,
      );
    },
    ProfileNavView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ProfileNavView(),
        settings: data,
      );
    },
    ChatList: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const ChatList(),
        settings: data,
      );
    },
    Chats: (data) {
      var args = data.getArgs<ChatsArguments>(
        orElse: () => ChatsArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Chats(key: args.key),
        settings: data,
      );
    },
    NavBarView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const NavBarView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SignUp arguments holder class
class SignUpArguments {
  final Key? key;
  SignUpArguments({this.key});
}

/// Profile arguments holder class
class ProfileArguments {
  final Key? key;
  final int? index;
  final List<DogWalker>? dogWalkers;
  ProfileArguments({this.key, this.index, this.dogWalkers});
}

/// Chats arguments holder class
class ChatsArguments {
  final Key? key;
  ChatsArguments({this.key});
}
