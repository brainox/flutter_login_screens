import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhenLoginIsNotMandatory extends StatelessWidget {
  WhenLoginIsNotMandatory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xff000000),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 172.h,
                ),
                Image.asset(
                  'images/fashion_icon.png',
                  // height: 154.h,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text(
                    'Log in or create an account to keep your subscription in sync',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontFamily: 'OpenSans',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 31.h,
                ),
                GrayButton(
                  text: 'Login with Facebook',
                  onPress: () {},
                  borderColor: Colors.white,
                ),
                SizedBox(
                  height: 31.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GrayButton(
                      text: 'Sign Up',
                      onPress: () {},
                      widthSize: 150,
                    ),
                    GrayButton(
                      text: 'Log In',
                      onPress: () {},
                      widthSize: 150,
                    ),
                  ],
                ),
                SizedBox(
                  height: 167.h,
                ),
                GrayButton(
                  text: 'later',
                  onPress: () {},
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallDots(),
                    SizedBox(
                      width: 10.w,
                    ),
                    SmallDots(),
                    SizedBox(
                      width: 10.w,
                    ),
                    SmallDots(),
                    SizedBox(
                      width: 10.w,
                    ),
                    SmallDots(),
                    SizedBox(
                      width: 10.w,
                    ),
                    SmallDots(
                      colorOpacity: 1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GrayButton extends StatelessWidget {
  GrayButton(
      {Key? key,
      required this.text,
      required this.onPress,
      this.borderColor = Colors.transparent,
      this.widthSize = double.infinity})
      : super(key: key);

  final String text;
  final VoidCallback onPress;
  Color borderColor;
  double widthSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthSize.w,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor: Color(0xffFFFFFF).withOpacity(0.10196078431372549),
          primary: Colors.white.withOpacity(0.8),
          side: BorderSide(color: borderColor),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          padding: EdgeInsets.all(16),
          textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'OpenSans',
              fontSize: 16.sp),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class SmallDots extends StatelessWidget {
  SmallDots({Key? key, this.colorOpacity = 0.10196078431372549})
      : super(key: key);
  double colorOpacity;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 7.w, height: 7.h),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white.withOpacity(colorOpacity)),
    );
  }
}
