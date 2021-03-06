import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitch_login_screen/dee_login.dart';
import 'package:twitch_login_screen/easy_peasy.dart';
import 'package:twitch_login_screen/login.dart';
import 'package:twitch_login_screen/parallel_login.dart';
import 'package:twitch_login_screen/remember_uber.dart';
import 'package:twitch_login_screen/twitch_login_page.dart';
import 'package:twitch_login_screen/when_login_is_not_mandatory.dart';
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
        // home: TwitchLoginPage(),
        // home: Login(),
        // home: WhenLoginIsNotMandatory(),
        // home: RememberUber(),
        // home: SomethingFunky(),
        // home: EasyPeasy(),
        // home: DeeLogin(),
        home: ParallelLogin(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: Size(375, 812),
    );
  }
}
