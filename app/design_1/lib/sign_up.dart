import 'package:flutter/material.dart';
import 'package:design_1/custom_app_bar.dart';
import 'package:design_1/utils/constants.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "[App Name]",
        height: getScreenHeight(context) * 0.30,
        action: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/login');
          },
          style: TextButton.styleFrom(
            backgroundColor: COLOR_MAIN_LIGHT,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            "Sign In",
            style: textThemeColor.bodySmall,
          )
        ),
      ),
      body: SignUp(),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 34, left: 61, right: 61),
      child: Column(
        children: [
          // "Create new Account" Text
          Align(
            alignment: Alignment.center,
            child: Text(
              "Create new Account",
              style: textThemeColor.displayMedium,
              textAlign: TextAlign.center,
            )
          ),

          // Username text field
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "NAME",
                  filled: true,
                  fillColor: COLOR_GRAY,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none
                  ),
                ),
                style: textThemeColor.bodyMedium,
              )
            )
          ),

          // Password text field
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "EMAIL",
                  filled: true,
                  fillColor: COLOR_GRAY,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none
                  ),
                ),
                style: textThemeColor.bodyMedium,
              )
            )
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  hintText: "PASSWORD",
                  filled: true,
                  fillColor: COLOR_GRAY,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none
                  ),
                ),
                style: textThemeColor.bodyMedium,
              )
            )
          ),

          // Log in text button
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: COLOR_MAIN,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    "Sign up",
                    style: textThemeWhite.titleSmall,
                  )
                ),
              ),
            )
          ),
        ],
      ),
    );
  }
}