import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class TwitchLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.longestSide,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back!",
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Please log in to your account.",
                    style: TextStyle(
                        fontSize: 20.sp, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 44.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: "Email Address"),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide:
                            BorderSide(color: Colors.transparent, width: 0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: "Password",
                      suffixText: "Forgot?",
                      suffixStyle: TextStyle(
                          color: kTwitchBlueColor,
                          fontSize: 14.0.h,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kTwitchButtonColor),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: 20.0.h),
                          ),
                          textStyle: MaterialStateProperty.all(
                            TextStyle(
                                fontSize: 16.0.sp, fontWeight: FontWeight.w700),
                          )),
                      child: Text('LOGIN'),
                    ),
                  ),
                  SizedBox(
                    height: 28.0.h,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      child: Text(
                        "REGISTER NOW",
                        style: TextStyle(
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
