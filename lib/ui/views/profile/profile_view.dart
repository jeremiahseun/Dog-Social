import 'package:dog_social/shared/dog_walker.dart';
import 'package:dog_social/shared/styles.dart';
import 'package:dog_social/ui/views/profile/profile_viewmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:stacked/stacked.dart';

class Profile extends StatelessWidget {
  final int? index;
  final List<DogWalker>? dogWalkers;
  const Profile({
    Key? key,
    this.index,
    this.dogWalkers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProfileViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
          body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 450,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("${dogWalkers![index!].image}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => model.goBack(),
                        child: GlassContainer.clearGlass(
                          height: 44,
                          width: 44,
                          blur: 3,
                          alignment: Alignment.center,
                          shape: BoxShape.circle,
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GlassContainer.clearGlass(
                        height: 44,
                        width: 101,
                        borderRadius: BorderRadius.circular(20),
                        padding: const EdgeInsets.all(10),
                        blur: 3,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Verified", style: AppStyles.smallText()),
                            const Icon(
                              Icons.verified,
                              size: 17,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .6,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                  color: Colors.white,
                ),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "${dogWalkers![index!].name}",
                      style: AppStyles.bigText(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '/hr',
                                style: AppStyles.smallText(
                                        fontWeight: FontWeight.w300)
                                    .copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                            text: '${dogWalkers![index!].amount}\$',
                            style: AppStyles.smallText()
                                .copyWith(color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 10),
                        AppDivider(height: true),
                        const SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: ' km',
                                style: AppStyles.smallText(
                                        fontWeight: FontWeight.w300)
                                    .copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                            text: '${dogWalkers![index!].distance}',
                            style: AppStyles.smallText()
                                .copyWith(color: Colors.black),
                          ),
                        ),
                        const SizedBox(width: 10),
                        AppDivider(height: true),
                        const SizedBox(width: 10),
                        Row(
                          children: [
                            Text(
                              '${dogWalkers![index!].rating} ',
                              style: AppStyles.smallText()
                                  .copyWith(color: Colors.black),
                            ),
                            const Icon(Icons.star, size: 10, color: Colors.grey)
                          ],
                        ),
                        const SizedBox(width: 10),
                        AppDivider(height: true),
                        const SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: ' walks',
                                style: AppStyles.smallText(
                                        fontWeight: FontWeight.w300)
                                    .copyWith(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                            text: '${dogWalkers![index!].amountOfWalks}',
                            style: AppStyles.smallText()
                                .copyWith(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 44,
                          width: 99,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "About",
                            style: AppStyles.smallText().copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 99,
                          decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Location",
                            style: AppStyles.smallText().copyWith(
                              color: const Color(0xffb0b0b0),
                            ),
                          ),
                        ),
                        Container(
                          height: 44,
                          width: 99,
                          decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Reviews",
                            style: AppStyles.smallText().copyWith(
                              color: const Color(0xffb0b0b0),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Age',
                                      style: AppStyles.smallText(
                                          fontWeight: FontWeight.w200)),
                                  Text('${dogWalkers![index!].age} years',
                                      style: AppStyles.mediumText()),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Experience',
                                      style: AppStyles.smallText(
                                          fontWeight: FontWeight.w200)),
                                  Text(
                                      '${dogWalkers![index!].experience} months',
                                      style: AppStyles.mediumText()),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                                width: MediaQuery.of(context).size.width * .75),
                            child: Text("${dogWalkers![index!].description}"),
                          ),
                          Text(
                            'Read more',
                            style: AppStyles.smallText().copyWith(
                              color: Colors.orange,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Center(
                            child: AppStyles.bigButton(
                              key: const Key('bigButton'),
                              context: context,
                              padding: false,
                              onTap: () => model.navigateToChat(),
                              text: 'Check schedule',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
      viewModelBuilder: () => ProfileViewModel(),
    );
  }
}
