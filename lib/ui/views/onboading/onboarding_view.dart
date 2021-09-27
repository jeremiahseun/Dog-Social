import 'package:dog_social/shared/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.nonReactive(
      builder: (context, model, child) => Scaffold(
        body: SafeArea(
          child: Container(
            //  alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pictures/onboard_picture.png'),
                  fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset('assets/logo.png')),
                const Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text(
                        '1',
                      ),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      height: 30,
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: AppDivider(),
                    ),
                    Container(
                      child: const Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff404040),
                      ),
                      height: 30,
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: AppDivider(),
                    ),
                    Container(
                      child: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff404040),
                      ),
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Too tired to walk your dog?',
                  style: AppStyles.normalText(),
                ),
                Text(
                  'Let\'s help you!',
                  style: AppStyles.normalText(),
                ),
                const SizedBox(height: 20),
                Center(
                  child: AppStyles.bigButton(
                      context: context,
                      onTap: model.navigateToSignUp,
                      text: 'Join our community',
                      color: Colors.white),
                ),
                const SizedBox(height: 30),
                RichText(
                  textHeightBehavior: const TextHeightBehavior(),
                  text: TextSpan(
                      text: 'Already a member? ',
                      style: AppStyles.smallText(),
                      children: [
                        TextSpan(
                          text: 'Sign in',
                          style: AppStyles.smallText()
                              .copyWith(color: Colors.orange),
                        ),
                      ]),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      viewModelBuilder: () => OnboardingViewModel(),
    );
  }
}
