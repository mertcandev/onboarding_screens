import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Walkthrough3 extends StatefulWidget {
  const Walkthrough3({Key? key}) : super(key: key);

  @override
  State<Walkthrough3> createState() => _Walkthrough3State();
}

class _Walkthrough3State extends State<Walkthrough3> {
  final Color textBlackColor = const Color(0xff303437);
  @override
  Widget build(BuildContext context) {
    int pageViewIndex = 1;
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
                    image: AssetImage("assets/picture2.png"),
                    fit: BoxFit.fitHeight)),
          ),
        ),
        const Spacer(),
        Padding(
            padding: EdgeInsets.only(right: 17.w, left: 17.w),
            child: Text(
              "Capture your spending",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  fontSize: 24.h,
                  fontWeight: FontWeight.w600,
                  color: textBlackColor),
            )),
        Padding(
          padding: EdgeInsets.only(bottom: 93.h, top: 59.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: pageViewIndex == 0 ? 12.h : 8.h,
                width: pageViewIndex == 0 ? 12.h : 8.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageViewIndex == 0
                        ? const Color(0xffFCE76B)
                        : const Color(0xffE3E5E5)),
              ),
              SizedBox(width: 8.w),
              Container(
                height: pageViewIndex == 1 ? 12.h : 8.h,
                width: pageViewIndex == 1 ? 12.h : 8.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: pageViewIndex == 1
                        ? const Color(0xffFCE76B)
                        : const Color(0xffE3E5E5)),
              ),
              SizedBox(width: 8.w),
              Container(
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
