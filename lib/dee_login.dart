import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class DeeLogin extends StatelessWidget {
  const DeeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: kDeeBackgroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 59.h,
                    ),
                    SvgPicture.asset('images/dotted_top.svg',
                        fit: BoxFit.fitHeight, color: Colors.white),
                    SizedBox(
                      height: 112.h,
                    ),
                    Text(
                      'Excited?!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Quicksand'),
                    ),
                    SizedBox(
                      height: 39.h,
                    ),
                    Text(
                      'You should be!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Quicksand'),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    Text(
                      'Sign in if you already have an account with us',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Quicksand'),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    WhiteButton(
                      text: 'Sign In',
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Text(
                      'Or sign up if you are new!',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Quicksand'),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    WhiteButton(text: 'Sign In')
                  ],
                ),
              ),
              SvgPicture.asset('images/dotted_top.svg',
                  fit: BoxFit.fitHeight, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}

class WhiteButton extends StatelessWidget {
  WhiteButton({
    Key? key,
    required this.text,
    this.onPress,
  }) : super(key: key);

  final String text;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPress,
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
          padding: EdgeInsets.all(17),
          textStyle: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'Quicksand',
              fontSize: 20.sp),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
