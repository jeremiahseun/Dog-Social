import 'package:dog_social/shared/styles.dart';
import 'package:dog_social/ui/views/signup/signup_view.form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'signup_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'fullname'),
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
])
class SignUp extends StatelessWidget with $SignUp {
 SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
      onModelReady: (model) => listenToFormUpdated(model),
      builder: (context, model, child) => ModalProgressHUD(
        inAsyncCall: model.isLoading,
        color: Colors.white,
        progressIndicator: const CircularProgressIndicator(
          color: Colors.orange,
        ),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => model.goBack()),
                    const SizedBox(height: 20),
                    Text(
                      'Let\'s start here',
                      style: AppStyles.bigText(),
                    ),
                    Text(
                      'Fill in your details to begin',
                      style: AppStyles.mediumText(),
                    ),
                    const SizedBox(height: 20),
                    AppStyles.textBar(
                        label: 'Fullname', controller: fullnameController),
                    const SizedBox(height: 20),
                    AppStyles.textBar(
                        label: 'E-mail', controller: emailController),
                    const SizedBox(height: 20),
                    AppStyles.textBar(
                      label: 'Password',
                      obscureText: model.password ? false : true,
                      controller: passwordController,
                      suffixIcon: IconButton(
                        icon: model.password
                            ? const Icon(Icons.remove_red_eye_sharp)
                            : const Icon(Icons.remove_red_eye_outlined),
                        onPressed: () => model.showPassword(),
                      ),
                    ),
                    const SizedBox(height: 30),
                    AppStyles.bigButton(
                        context: context,
                        onTap: () => model.registerUser(),
                        text: 'Sign up',
                        color: Colors.white,
                        padding: false),
                    const SizedBox(height: 120),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By signing in, i agree with ',
                          style:
                              AppStyles.smallText().copyWith(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: 'Terms of Use \n',
                              style: AppStyles.smallText().copyWith(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'and ',
                              style: AppStyles.smallText()
                                  .copyWith(color: Colors.grey),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: AppStyles.smallText().copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => SignUpViewModel(),
    );
  }
}
