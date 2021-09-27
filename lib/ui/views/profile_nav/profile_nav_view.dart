import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_nav_viewmodel.dart';

class ProfileNavView extends StatelessWidget {
  const ProfileNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileNavViewModel>.reactive(
      builder: (context, model, child) => const Scaffold(
        body: Center(
          child: Text("This is Profile "),
        ),
      ),
      viewModelBuilder: () => ProfileNavViewModel(),
    );
  }
}
