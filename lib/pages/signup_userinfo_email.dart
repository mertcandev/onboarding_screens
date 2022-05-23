import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoEmailScreen extends StatefulWidget {
  const UserInfoEmailScreen({Key? key}) : super(key: key);

  @override
  State<UserInfoEmailScreen> createState() => _UserInfoEmailScreenState();
}

class _UserInfoEmailScreenState extends State<UserInfoEmailScreen> {
  final Color textBlackColor = const Color(0xff303437);
  final String detailText =
      "Verifiy your email to secure access to your account.";
  bool isChecked = false;
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
                  child: Icon(
                Icons.person_rounded,
                color: Colors.white,
              )),
            ),
            Expanded(
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
                          "What’s your email?",
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
                        EdgeInsets.only(top: 52.h, left: 24.w, right: 24.w),
                    child: SizedBox(
                      height: 48.h,
                      width: double.maxFinite,
                      child: Center(
                        child: Text(
                          detailText,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontSize: 16.h,
                              fontWeight: FontWeight.w400,
                              color: textBlackColor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 55.h, right: 72.w, left: 72.w),
                    child: Container(
                      height: 30.h,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffC4C4C4)))),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.w),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                  child: TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.only(bottom: 10.h),
                                    border: InputBorder.none,
                                    hintText: "example@",
                                    hintStyle: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xffCDCFD0))),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 64.h, left: 20.w, right: 20.w),
                    child: SizedBox(
                      height: 40.h,
                      width: 320.w,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: isChecked,
                            checkColor: const Color(0xffffffff),
                            onChanged: (value) {},
                            side: const BorderSide(color: Color(0xffCDCFD0)),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.sp)),
                          ),
                          SizedBox(width: 10.w),
                          SizedBox(
                            height: 40.h,
                            width: 260.w,
                            child: Center(
                              child: RichText(
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                  text: TextSpan(
                                      text: "I have read and agreed with ",
                                      style: GoogleFonts.inter(
                                          fontSize: 12.h,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff303437)),
                                      children: [
                                        TextSpan(
                                            text: "Privacy Policy ",
                                            style: GoogleFonts.inter(
                                                fontSize: 12.h,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff5BEFBD)),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {}),
                                        TextSpan(
                                          text: "and ",
                                          style: GoogleFonts.inter(
                                              fontSize: 12.h,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff303437)),
                                        ),
                                        TextSpan(
                                            text: "Terms of Use",
                                            style: GoogleFonts.inter(
                                                fontSize: 12.h,
                                                fontWeight: FontWeight.w400,
                                                color: const Color(0xff5BEFBD)),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {})
                                      ])),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
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
