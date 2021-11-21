import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class EasyPeasy extends StatelessWidget {
  final _textEditingController = TextEditingController();

  TextStyle plainStyle = TextStyle(
      fontFamily: 'Poppins', fontSize: 14.sp, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    Widget getButton({required String hint, required Color color}) {
      return Material(
        borderRadius: BorderRadius.circular(30.r),
        color: color,
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width,
          height: 47.h,
          padding: EdgeInsets.symmetric(vertical: 12),
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
        contentPadding: EdgeInsets.fromLTRB(18.w, 15.h, 18.w, 15.h),
        hintText: "Email",
        suffixIcon: IconButton(
          onPressed: _textEditingController.clear,
          icon: Icon(Icons.clear),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(color: kEasyGreenColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.r),
          borderSide: BorderSide(color: kEasyGreenColor),
        ),
      ),
    );

    final button = Material(
      borderRadius: BorderRadius.circular(22),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "Get it Done",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 35.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: kEasyGreenColor,
                  ),
                ),
                SizedBox(
                  height: 26.h,
                ),
                Text(
                  "Sign in or Create an account",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: kEasyDarkColor.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 27.h,
                ),
                emailField,
                SizedBox(
                  height: 25.h,
                ),
                getButton(hint: "Continue", color: kEasyGreenColor),
                SizedBox(
                  height: 11.h,
                ),
                Center(
                  child: Text(
                    'or',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: kEasyDarkColor.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 11.h,
                ),
                getButton(
                    hint: "Continue with Facebook",
                    color: kEasyBlueButtonColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
