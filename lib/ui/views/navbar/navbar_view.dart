import 'package:dog_social/shared/styles.dart';
import 'package:dog_social/ui/views/chat_lists/chat_lists_view.dart';
import 'package:dog_social/ui/views/home/home_view.dart';
import 'package:dog_social/ui/views/moment/moment_view.dart';
import 'package:dog_social/ui/views/profile/profile_view.dart';
import 'package:dog_social/ui/views/profile_nav/profile_nav_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'navbar_viewmodel.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavBarViewModel>.reactive(
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
        body: getViewForIndex(model.currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedLabelStyle:
              AppStyles.vSmallText()?.copyWith(fontWeight: FontWeight.bold),
          unselectedLabelStyle:
              AppStyles.vSmallText()?.copyWith(color: Colors.grey),
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: getBottomIcons(),
        ),
      ),
      viewModelBuilder: () => NavBarViewModel(),
    );
  }

  List<BottomNavigationBarItem> getBottomIcons() {
    List<String> name = ['Home', 'Moments', 'Chat', 'Profile'];
    List<Widget> icons = [
      AppIcons.home,
      AppIcons.moment,
      AppIcons.chat,
      AppIcons.profile
    ];
    List<BottomNavigationBarItem> bottomNavList = List.generate(4, (i) {
      var item = BottomNavigationBarItem(
          label: name[i], icon: icons[i], activeIcon: icons[i]);

      return item;
    });

    return bottomNavList;
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const Home();
      case 1:
        return const Moments();
      case 2:
        return const ChatList();
      case 3:
        return const ProfileNavView();
      default:
        return Container();
    }
  }
}
