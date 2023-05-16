import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/customTextInput.dart';
import '../../widgets/socialButton.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE6E6E6),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(16),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 180,
                        child: Center(
                            child: SvgPicture.asset(
                          'assets/icons/logo.svg',
                          color: Colors.grey,
                        ))),
                    const SizedBox(height: 10),
                    Text(
                      "CholeraWatch",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 24),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Create an account",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Create your account, it takes less than a minute.",
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    CustomTextInput(
                      onChange: (val) {},
                      hintText: "Email",
                    ),
                    const SizedBox(height: 10),
                    CustomTextInput(
                      onChange: (val) {},
                      hintText: "Password",
                      isPassword: true,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(),
                            onPressed: () async {},
                            child: const Text('Sign Up'))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Sign in",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Colors.green),
                            ))
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "or continue with",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: 10),
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialButton(
                          icon: 'google.svg',
                        ),
                        SizedBox(width: 10),
                        SocialButton(
                          icon: 'facebook.svg',
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
