import 'package:dog_social/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Home',
                              style: AppStyles.bigText(),
                            ),
                            Text(
                              'Explore dog walkers',
                              style: AppStyles.mediumText().copyWith(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        AppStyles.smallButton(
                            context: context, text: 'Book a walk'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    AppStyles.textBar(
                      label: 'Kiyv, Ukraine',
                      prefixIcon: const Icon(Icons.location_on_outlined),
                      suffixIcon: const Icon(Icons.settings_suggest_outlined),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Near you',
                          style: AppStyles.bigText(),
                        ),
                        Text('View all',
                            style: AppStyles.mSmallText(underline: true)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 25);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          print(index);
                          model.navigateToProfile(index, dogWalkers: model.dogWalkers);
                        },
                        child: model.dogWalkers[index]);
                  },
                  itemCount: model.dogWalkers.length,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const Divider(
                      thickness: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Suggested',
                          style: AppStyles.bigText(),
                        ),
                        Text('View all',
                            style: AppStyles.mSmallText(underline: true)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  shrinkWrap: true,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 25);
                  },
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () => model.navigateToProfile(index, dogWalkers: model.dogWalkers),
                        child: model.dogWalkers[index]);
                  },
                  itemCount: model.dogWalkers.length,
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
