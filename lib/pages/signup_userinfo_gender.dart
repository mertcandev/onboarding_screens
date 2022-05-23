import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoGenderScreen extends StatefulWidget {
  const UserInfoGenderScreen({Key? key}) : super(key: key);

  @override
  State<UserInfoGenderScreen> createState() => _UserInfoGenderScreenState();
}

class _UserInfoGenderScreenState extends State<UserInfoGenderScreen> {
  final Color textBlackColor = const Color(0xff303437);
  bool maleSelected = false;
  bool femaleSelected = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: FooterLayout(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: SizedBox(
                  height: 48.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: const Icon(Icons.arrow_back_ios_new_rounded),
                        ),
                      ),
                      const Spacer()
                    ],
                  )),
            ),
            Container(
              height: 56.h,
              width: 56.w,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xffFCE76B)),
              child: const Center(
                  child: Icon(Icons.person_rounded, color: Colors.white)),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 27.h),
                      child: SizedBox(
                        height: 36.h,
                        width: double.maxFinite,
                        child: Center(
                          child: Text(
                            "I am a",
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w600,
                                color: textBlackColor),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 130.h),
                      child: SizedBox(
                        height: 108.h,
                        width: 312.w,
                        child: ListView(
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  maleSelected = true;
                                  femaleSelected = false;
                                });
                              },
                              child: Container(
                                height: 48.h,
                                width: 312.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    border: Border.all(
                                        color: maleSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xffC4C4C4),
                                        width: maleSelected == true ? 3 : 2)),
                                child: Center(
                                  child: Text(
                                    "Male",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: maleSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xff979C9E)),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 8.h),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  femaleSelected = true;
                                  maleSelected = false;
                                });
                              },
                              child: Container(
                                height: 48.h,
                                width: 312.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    border: Border.all(
                                        color: femaleSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xffCDCFD0),
                                        width: femaleSelected == true ? 3 : 2)),
                                child: Center(
                                  child: Text(
                                    "Female",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: femaleSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xff979C9E)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
          footer: Container(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            color: Colors.white,
            height: 74.h,
            child: Center(
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.sp),
                    color: const Color(0xff5BEFBD)),
                child: Center(
                  child: Text(
                    "CONTINUE",
                    style: GoogleFonts.poppins(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
