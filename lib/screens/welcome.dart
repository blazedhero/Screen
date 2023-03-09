import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen/screens/sigin.dart';
import 'package:screen/screens/signup.dart';
import 'package:screen/utils/colors.dart';
import 'package:screen/widgets/background_image.dart';
import 'package:screen/widgets/customBtn_widget.dart';
import 'package:screen/widgets/or_widget.dart';
import 'package:screen/widgets/other_signin_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            BackgroundWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Text(
                  "WELCOME",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "   Discover More Beautiful",
                  style: TextStyle(
                      fontSize: 23,
                      color: pinkColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 200.h,
                ),
                Padding(
                  padding: EdgeInsets.all(20.h),
                  child: const Text(
                    "Are you looking for wallpaper?",
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: "mont",
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomBtn(
                      text: "Sign In",
                      color: pinkColor,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ));
                      }),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: CustomBtn(
                      text: "Sign Up",
                      color: blackColor,
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Signup(),
                        ));
                      }),
                ),
                OrWidget(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: OtherSignIn(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
