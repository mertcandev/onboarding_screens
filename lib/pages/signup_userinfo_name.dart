import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoNameScreen extends StatefulWidget {
  const UserInfoNameScreen({Key? key}) : super(key: key);

  @override
  State<UserInfoNameScreen> createState() => _UserInfoNameScreenState();
}

class _UserInfoNameScreenState extends State<UserInfoNameScreen> {
  final Color textBlackColor = const Color(0xff303437);
  bool individualSelected = false;
  bool freelancerSelected = false;
  bool businessOwnerSelected = false;

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
                            "My First name is",
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w600,
                                color: textBlackColor),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 80.h, right: 90.w, left: 90.w),
                      child: Container(
                        height: 25.h,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: const Color(0xffC4C4C4),
                                    width: 1.h))),
                        child: Row(
                          children: [
                            Flexible(
                                child: TextField(
                              style: GoogleFonts.poppins(
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xff303437)),
                              cursorColor: const Color(0xffC4C4C4),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(bottom: 10.h),
                                hintText: "Your name",
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 16.h,
                                    fontWeight: FontWeight.w300,
                                    color: const Color(0xff303437)
                                        .withOpacity(0.6)),
                                border: InputBorder.none,
                              ),
                            )),
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
