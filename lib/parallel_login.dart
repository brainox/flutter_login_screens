import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

enum MenuState { active, inactive }

class ParallelLogin extends StatefulWidget {
  @override
  State<ParallelLogin> createState() => _ParallelLoginState();
}

class _ParallelLoginState extends State<ParallelLogin> {
  MenuState selectedMenu = MenuState.active;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Image.asset(
                  'images/parallel_icon.png',
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 38.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(
                  height: 62.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedMenu = MenuState.active;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Login',
                              style: TextStyle(
                                  color: selectedMenu == MenuState.active
                                      ? kParallelBlueColor
                                      : Colors.black,
                                  fontSize: 16.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: selectedMenu == MenuState.active
                                      ? FontWeight.w700
                                      : FontWeight.w400),
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Container(
                              height: 4.h,
                              color: selectedMenu == MenuState.active
                                  ? kParallelBlueColor
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedMenu = MenuState.inactive;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Signup',
                              style: TextStyle(
                                  color: selectedMenu == MenuState.active
                                      ? Colors.black
                                      : kParallelBlueColor,
                                  fontSize: 16.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: selectedMenu == MenuState.active
                                      ? FontWeight.w400
                                      : FontWeight.w700),
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            Container(
                              height: 4.h,
                              color: selectedMenu == MenuState.active
                                  ? Colors.transparent
                                  : kParallelBlueColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 54.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 37.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: kParallelBlueColor.withOpacity(0.05),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(-3, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email Address',
                                    hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp),
                                  ),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp),
                                    suffixIcon: Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Color(0xffCCCCCC),
                                    ),
                                  ),
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5.r),
                        color: kParallelBlueColor,
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
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Poppins',
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 29.h,
                      ),
                      InkWell(
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: kParallelBlueColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Divider(
                        color: Color(0xffCCCCCC),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: Image.asset('images/social_icons.png'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
