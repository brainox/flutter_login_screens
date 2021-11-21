import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 153.h,
                  ),
                  Image.asset(
                    'images/bank.png',
                    height: 94.h,
                    fit: BoxFit.fitHeight,
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  Text(
                    "Welcome to \nGoliath National Bank",
                    style: TextStyle(
                        height: 1.8.h,
                        fontSize: 25.sp,
                        fontFamily: 'IBM Plex Sans',
                        fontWeight: FontWeight.w700,
                        color: kEasyDarkColor),
                  ),
                  SizedBox(
                    height: 81.h,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: kLoginTextColor,
                          width: 1.0.w, //style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.r),
                          topLeft: Radius.circular(5.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kLoginTextColor, width: 1.0.w),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(5.r),
                          topLeft: Radius.circular(5.r),
                        ),
                      ),
                      hintText: "Email Adresss",
                      prefixIcon: Icon(Icons.mail_outline),
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "IBM Plex Sans",
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kLoginTextColor, width: 1),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.r),
                          bottomRight: Radius.circular(5.r),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: kLoginTextColor, width: 1.0.w),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5.r),
                          bottomRight: Radius.circular(5.r),
                        ),
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock_outlined),
                    ),
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontFamily: "IBM Plex Sans"),
                  ),
                  SizedBox(height: 24.h),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: kTwitchBlueColor,
                          fontSize: 12,
                          fontFamily: "IBM Plex Sans",
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  Material(
                    borderRadius: BorderRadius.circular(5.r),
                    color: kEasyBlueButtonColor,
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      height: 52.h,
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      onPressed: () {},
                      child: Text(
                        "LOGIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Center(
                    child: Text(
                      'First time User?',
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: 'IBM Plex Sans',
                          fontWeight: FontWeight.w400,
                          color: kLoginTextColor),
                    ),
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Sign Up Here',
                        style: TextStyle(
                            fontSize: 17.sp,
                            fontFamily: 'IBM Plex Sans',
                            fontWeight: FontWeight.w700,
                            color: kTwitchBlueColor),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 68.h,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
