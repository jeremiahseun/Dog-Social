import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'moment_viewmodel.dart';

class Moments extends StatelessWidget {
 const Moments({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return ViewModelBuilder<MomentsViewModel>.reactive(
     builder: (context, model, child) => const Scaffold(
        body: Center(child: Text("This is moments"),),
     ),
     viewModelBuilder: () => MomentsViewModel(),
   );
 }
}