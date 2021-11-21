import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constants.dart';

class RememberUber extends StatelessWidget {
  const RememberUber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.longestSide * 0.5,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'images/uber_kite_svg.svg',
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.longestSide,
                    color: kRememberDarkBlueColor,
                    fit: BoxFit.fill,
                  ),
                  Center(
                    child: SvgPicture.asset('images/remember_svg.svg',
                        fit: BoxFit.fitHeight, color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: MediaQuery.of(context).size.longestSide * 0.5,
              child: Padding(
                padding:
                    EdgeInsets.only(left: 39.0.w, top: 44.0.h, right: 47.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consetetur \nsadipscing elitr, sed diam nonumy eirmod tempor',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          height: 1.5.h),
                    ),
                    SizedBox(
                      height: 53.sp,
                    ),
                    TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(
                          Icons.account_circle,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline),
                          enabledBorder:
                              UnderlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none)),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: kRememberDarkBlueColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.black.withOpacity(0.1))),
        ),
        child: SizedBox(
          height: 72.h,
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: kRememberDarkBlueColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Expanded(
                child: Container(
                    color: kRememberDarkBlueColor,
                    child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: kRememberWhiteColor,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(
                                width: 18.w,
                              ),
                              Icon(
                                Icons.arrow_forward,
                                size: 16.sp,
                                color: kRememberWhiteColor,
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
