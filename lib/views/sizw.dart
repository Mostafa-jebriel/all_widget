import 'package:all/main.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SizePage extends StatefulWidget {
  @override
  State<SizePage> createState() => _SizeState();
}

class _SizeState extends State<SizePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (c,w){
        return ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(c, w!),
            maxWidth: 1200,
            minWidth: 400,
            defaultScale: true,
            breakpoints: [
              const ResponsiveBreakpoint.resize(450, name: MOBILE),
              const ResponsiveBreakpoint.autoScale(800, name: TABLET),
              const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
              const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
            background: Container(color: const Color(0xFFF5F5F5))
        );
      },
      home: MyApp(),
    );
  }
}


class SizePage2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      builder: (_,c) => MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(),
          primarySwatch: Colors.blue,
          accentColor: Colors.white,
        ),
        home: MyHomePage(),
      ),
      designSize: Size(375, 812),
    );
  }
}
class MyHomePage extends StatelessWidget {
  static final Color textColor = Color(0xB3000000);
  static final Color backgroundColor = Color(0xffF5F5F5);
  static final Color buttonColor = Color(0xff50C2C9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/image/top_image.png",
            height: 144.h,
            width: double.infinity,
            alignment: Alignment.topLeft,
          ),
          Text(
            "Welcome Onboard!",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: textColor,
            ),
          ),
          Text(
            "Let’s help you to meet your Task!",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: textColor,
            ),
          ),
          SizedBox(height: 59.h),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Image.asset(
              "assets/image/mobile.png",
              height: 186.h,
            ),
          ),
          SizedBox(height: 85.h),
          buildTextField(),
          SizedBox(height: 17.h),
          buildTextField(),
          SizedBox(height: 29.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 52.h),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(buttonColor),
                ),
                onPressed: () {},
                child: Text("Sign Up"),
              ),
            ),
          ),
          SizedBox(height: 28.h),
          Wrap(
            children: [
              Text(
                "Dont’t have Account ? ",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: textColor,
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: buttonColor,
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              Text(
                "Dont’t have Account ? ",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: textColor,
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: buttonColor,
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              Text(
                "Dont’t have Account ? ",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: textColor,
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: buttonColor,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }

  Padding buildTextField() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 52.w),
      child: SizedBox(
        height: 46.h,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Enter your name",
            hintStyle: TextStyle(
              fontSize: 11.sp,
            ),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(25.r),
            ),
          ),
        ),
      ),
    );
  }
}
