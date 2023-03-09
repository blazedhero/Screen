import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:screen/utils/colors.dart';
import 'package:screen/widgets/background_image.dart';
import 'package:screen/widgets/customBtn_widget.dart';
import 'package:screen/widgets/have_account.dart';
import 'package:screen/widgets/signup_body.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              //BackgroundWidget(),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 120.h,
                    ),
                    const Text("Sign Up",
                        style: TextStyle(
                            fontFamily: "mont",
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text("If You want too",
                        style: TextStyle(
                            fontFamily: "mont",
                            fontSize: 20,
                            color: pinkColor,
                            fontWeight: FontWeight.bold)),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 15.h),
                      child: SignUpBody(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: HavingWidget(haveAccount: true),
                    )
                  ],
                ),
              ),
              Positioned(
                left: 60.w,
                right: 60.w,
                top: 625.h,
                child: CustomBtn(
                  text: "Register",
                  color: pinkColor,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
