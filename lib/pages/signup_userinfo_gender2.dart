import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoGenderScreen2 extends StatefulWidget {
  const UserInfoGenderScreen2({Key? key}) : super(key: key);

  @override
  State<UserInfoGenderScreen2> createState() => _UserInfoGenderScreen2State();
}

class _UserInfoGenderScreen2State extends State<UserInfoGenderScreen2> {
  final Color textBlackColor = const Color(0xff303437);
  bool singleSelected = false;
  bool marriedSelected = false;
  bool haveKidsSelected = false;
  bool divorcedSelected = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
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
                            "My relation status",
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
                        height: 258.h,
                        width: 312.w,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.only(left: 25.w, right: 25.w),
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  singleSelected = true;
                                  marriedSelected = false;
                                  haveKidsSelected = false;
                                  divorcedSelected = false;
                                });
                              },
                              child: Container(
                                height: 48.h,
                                width: 312.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    border: Border.all(
                                        color: singleSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xffC4C4C4),
                                        width: singleSelected == true ? 3 : 2)),
                                child: Center(
                                  child: Text(
                                    "Single",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: singleSelected == true
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
                                  singleSelected = false;
                                  marriedSelected = true;
                                  haveKidsSelected = false;
                                  divorcedSelected = false;
                                });
                              },
                              child: Container(
                                height: 48.h,
                                width: 312.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    border: Border.all(
                                        color: marriedSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xffC4C4C4),
                                        width:
                                            marriedSelected == true ? 3 : 2)),
                                child: Center(
                                  child: Text(
                                    "In a relation / Married",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: marriedSelected == true
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
                                  singleSelected = false;
                                  marriedSelected = false;
                                  haveKidsSelected = true;
                                  divorcedSelected = false;
                                });
                              },
                              child: Container(
                                height: 48.h,
                                width: 312.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    border: Border.all(
                                        color: haveKidsSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xffC4C4C4),
                                        width:
                                            haveKidsSelected == true ? 3 : 2)),
                                child: Center(
                                  child: Text(
                                    "Have kids",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: haveKidsSelected == true
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
                                  singleSelected = false;
                                  marriedSelected = false;
                                  haveKidsSelected = false;
                                  divorcedSelected = true;
                                });
                              },
                              child: Container(
                                height: 48.h,
                                width: 312.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.sp),
                                    border: Border.all(
                                        color: divorcedSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xffC4C4C4),
                                        width:
                                            divorcedSelected == true ? 3 : 2)),
                                child: Center(
                                  child: Text(
                                    "Divorcee",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: divorcedSelected == true
                                            ? const Color(0xff5BEFBD)
                                            : const Color(0xff979C9E)),
                                  ),
                                ),
                              ),
                            ),
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
