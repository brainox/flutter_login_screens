import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'easy_peasy.dart';
// import 'twitch_login_page.dart';
// import 'login.dart';
// import 'when_login_is_not_mandatory.dart';
// import 'dee_login.dart';
// import 'remember_uber.dart';
// import 'parallel_login.dart';
import 'something_funky.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: "Login Screens App",
        home: SomethingFunky(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: Size(375, 812),
    );
  }
}
