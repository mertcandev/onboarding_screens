import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Walkthrough2 extends StatefulWidget {
  const Walkthrough2({Key? key}) : super(key: key);

  @override
  State<Walkthrough2> createState() => _Walkthrough2State();
}

class _Walkthrough2State extends State<Walkthrough2> {
  final Color textBlackColor = const Color(0xff303437);
  @override
  Widget build(BuildContext context) {
    int pageViewIndex = 0;
    ScreenUtil.init(context);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Padding(
          padding: EdgeInsets.only(top: 60.h),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Swipe",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 20.h,
                  fontWeight: FontWeight.w500,
                  color: textBlackColor),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 65.h),
          child: Container(
            height: 254.h,
            width: 360.w,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/picture1.png"),
                    fit: BoxFit.fitHeight)),
          ),
        ),
        const Spacer(),
        Padding(
          padding: EdgeInsets.only(right: 17.w, left: 17.w),
          child: Text(
            "Single platform to view your money reality and ...",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontSize: 24.h,
                fontWeight: FontWeight.w600,
                color: textBlackColor),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 93.h, top: 59.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: pageViewIndex == 0 ? 12.h : 8.h,
                width: pageViewIndex == 0 ? 12.h : 8.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageViewIndex == 0
                        ? const Color(0xffFCE76B)
                        : const Color(0xffE3E5E5)),
              ),
              SizedBox(width: 8.w),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: pageViewIndex == 1 ? 12.h : 8.h,
                width: pageViewIndex == 1 ? 12.h : 8.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageViewIndex == 1
                        ? const Color(0xffFCE76B)
                        : const Color(0xffE3E5E5)),
              ),
              SizedBox(width: 8.w),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: pageViewIndex == 2 ? 12.h : 8.h,
                width: pageViewIndex == 2 ? 12.h : 8.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageViewIndex == 2
                        ? const Color(0xffFCE76B)
                        : const Color(0xffE3E5E5)),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
