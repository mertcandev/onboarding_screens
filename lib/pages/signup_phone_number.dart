import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class SignupPhoneNumberScreen extends StatefulWidget {
  const SignupPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  State<SignupPhoneNumberScreen> createState() => _SignupPhoneNumberScreenState();
}

class _SignupPhoneNumberScreenState extends State<SignupPhoneNumberScreen> {
  final Color textBlackColor = const Color(0xff303437);
  final String detailText =
      "we will send a text with verification code. Message and data rates may apply. The verified phone number can be used to sign in.";
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
            Padding(
              padding: EdgeInsets.only(top: 26.h, bottom: 10.h),
              child: SizedBox(
                height: 36.h,
                child: Center(
                  child: Text(
                    "My Number is",
                    style: GoogleFonts.poppins(
                        fontSize: 24.h,
                        fontWeight: FontWeight.w600,
                        color: textBlackColor),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 33.w, right: 33.w),
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 90.h),
                    child: Container(
                      height: 38.h,
                      width: 295.w,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Color(0xffC4C4C4)))),
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 9.h),
                              child: DropDown(
                                items: const ["number1", "number2"],
                                showUnderline: false,
                                hint: Text(
                                  "FR +33",
                                  style: GoogleFonts.inter(
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff6C7072)),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.w),
                            Flexible(
                                child: TextField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone Number",
                                  hintStyle: GoogleFonts.poppins(
                                      fontSize: 16.h,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff979C9E))),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 46.h),
                    child: SizedBox(
                      height: 84.h,
                      width: 295.w,
                      child: RichText(
                          text: TextSpan(
                              text: "When you tap ",
                              style: GoogleFonts.poppins(
                                  fontSize: 14.h,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff6C7072)),
                              children: [
                            TextSpan(
                                text: "Continue, ",
                                style: GoogleFonts.poppins(
                                    fontSize: 14.h,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff6C7072))),
                            TextSpan(
                                text: detailText,
                                style: GoogleFonts.poppins(
                                    fontSize: 14.h,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff6C7072)))
                          ])),
                    ),
                  ),
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
