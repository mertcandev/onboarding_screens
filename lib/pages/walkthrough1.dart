import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum LangPick { eng, fra }

class Walkthrough1 extends StatefulWidget {
  const Walkthrough1({Key? key}) : super(key: key);

  @override
  State<Walkthrough1> createState() => _Walkthrough1State();
}

class _Walkthrough1State extends State<Walkthrough1> {
  final Color textBlackColor = const Color(0xff303437);
  LangPick _langPick = LangPick.eng;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: Column(children: [
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
          padding: EdgeInsets.only(top: 118.h),
          child: SizedBox(
            height: 36.h,
            child: Center(
              child: Text(
                "Select your language",
                style: GoogleFonts.poppins(
                    fontSize: 24.h,
                    fontWeight: FontWeight.w600,
                    color: textBlackColor),
              ),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 118.h),
            child: Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: SizedBox(
                height: 80.h,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _langPick = LangPick.eng;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: const Color(0xffCDCFD0))),
                            child: Visibility(
                                visible:
                                    _langPick == LangPick.eng ? true : false,
                                child: Center(
                                  child: Container(
                                    height: 24.h,
                                    width: 24.h,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFCE76B),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 8.h,
                                        width: 8.h,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "English",
                            style: GoogleFonts.poppins(
                                fontSize: 18.h,
                                fontWeight: FontWeight.w500,
                                color: textBlackColor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _langPick = LangPick.fra;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: const Color(0xffCDCFD0))),
                            child: Visibility(
                                visible:
                                    _langPick == LangPick.fra ? true : false,
                                child: Center(
                                  child: Container(
                                    height: 24.h,
                                    width: 24.w,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xffFCE76B),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 8.h,
                                        width: 8.h,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                )),
                          ),
                          SizedBox(width: 6.w),
                          Text(
                            "French",
                            style: GoogleFonts.poppins(
                                fontSize: 18.h,
                                fontWeight: FontWeight.w500,
                                color: textBlackColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.only(bottom: 93.h, left: 24.w, right: 24.w),
            child: Container(
              height: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.sp),
                  color: const Color(0xff5BEFBD)),
              child: Center(
                  child: Text(
                "GET STARTED",
                style: GoogleFonts.poppins(
                    fontSize: 16.h,
                    fontWeight: FontWeight.w600,
                    color: textBlackColor),
              )),
            ),
          ),
        )
      ]),
    );
  }
}
