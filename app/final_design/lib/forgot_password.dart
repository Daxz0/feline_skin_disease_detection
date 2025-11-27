import 'package:final_design/utils/custom_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:final_design/utils/custom_app_bar.dart';
import 'package:final_design/utils/constants.dart';
import 'package:final_design/utils/auth_service.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "[App Name]",
          height: getScreenHeight(context) * 0.30,
          action: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: TextButton.styleFrom(
                backgroundColor: COLOR_MAIN_LIGHT,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                "Log In",
                style: textThemeColor.bodySmall,
              )),
        ),
        body: ForgotPassword());
  }
}

class ForgotPassword extends StatefulWidget {
  @override
  State<ForgotPassword> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPassword> {
  final _auth = AuthService();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: const EdgeInsets.only(top: 34, left: 61, right: 61),
      child: Column(
        children: [
          // "Welcome!" Text
          Align(
              alignment: Alignment.center,
              child: Text(
                "Forgot Password?",
                style: textThemeColor.displayMedium,
                textAlign: TextAlign.center,
              )),

          // "Sign in to continue!" text
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 55),
              )),

          const SizedBox(height: 16),
          CustomTextFields.buildTextFieldDesign1(_emailController, "EMAIL"),
          const SizedBox(height: 16),

          // Log in text button
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () async {
                        try {
                          await _auth
                              .sendPasswordResetLink(_emailController.text);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                  'An email has been sent to your email.'),
                              duration: const Duration(
                                  seconds:
                                      3), // Optional: how long it stays visible
                            ),
                          );
                          Navigator.pushReplacementNamed(context, '/');
                        } catch (e) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                  "Something didn't go right, please try again"),
                              duration: const Duration(
                                  seconds:
                                      3), // Optional: how long it stays visible
                            ),
                          );
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: COLOR_MAIN,
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(
                        "Send New Password",
                        style: textThemeWhite.titleSmall,
                      )),
                ),
              )),

          // "Forgot Password?" text button
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: TextButton(
                onPressed: () {
                  // TODO: Navigate to reset password screen or show dialog
                },
                child: Text(
                  "Don't see the link? Check your spam.",
                  style: textThemeColor.bodySmall,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
