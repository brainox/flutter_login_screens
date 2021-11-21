import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class SomethingFunky extends StatelessWidget {
  TextStyle plainStyle = TextStyle(
      fontFamily: 'Poppins', fontSize: 14.sp, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    Widget loginButton({required String hint, required Color color}) {
      return Material(
        borderRadius: BorderRadius.circular(30.r),
        color: color,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          height: 52.h,
          padding: EdgeInsets.symmetric(vertical: 19.h),
          onPressed: () {},
          child: Text(
            hint,
            textAlign: TextAlign.center,
            style: plainStyle.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      );
    }

    final emailField = TextFormField(
      obscureText: false,
      style: plainStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(21.w, 21.h, 21.w, 21.h),
        hintText: "Email Address",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
      ),
    );

    final passwordField = TextFormField(
      obscureText: true,
      style: plainStyle,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.fromLTRB(21.w, 21.h, 21.w, 21.h),
        hintText: "Email Address",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide.none,
        ),
      ),
    );

    final forgetPasswordButton = InkWell(
      child: Text(
        'Forgot password?',
        style: TextStyle(
            color: kLoginTextColor,
            fontFamily: 'Poppins',
            fontSize: 14.sp,
            fontWeight: FontWeight.w400),
      ),
    );

    final registerButton = InkWell(
      child: Text(
        'Register Here',
        style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 18.sp,
            fontWeight: FontWeight.w700),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: kSomethingFunkyBackgroundColor,
          ),
          Positioned(
            top: -30.h,
            left: -20.w,
            child: Image.asset("images/png_top_left_bottom.png"),
            width: 270.w,
          ),
          Positioned(
            top: -65.h,
            left: -20.w,
            child: Image.asset("images/png_top_left_top.png"),
            width: 270.w,
          ),
          Positioned(
            bottom: -20.h,
            left: -15.w,
            child: Image.asset("images/png_bottom_left.png"),
            width: 168.w,
          ),
          Positioned(
            bottom: -205,
            right: -17,
            child: Image.asset("images/png_bottom_right.png"),
            width: MediaQuery.of(context).size.width,
          ),
          Center(
            child: SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 30.sp),
                      ),
                      SizedBox(
                        height: 39.h,
                      ),
                      emailField,
                      SizedBox(
                        height: 16.h,
                      ),
                      passwordField,
                      SizedBox(
                        height: 18.h,
                      ),
                      loginButton(
                          hint: 'LOGIN', color: kSomethingFunkyLightGreenColor),
                      SizedBox(
                        height: 23.h,
                      ),
                      forgetPasswordButton,
                      SizedBox(
                        height: 54.h,
                      ),
                      registerButton
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
