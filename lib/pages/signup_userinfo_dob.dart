import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoDOBScreen extends StatefulWidget {
  const UserInfoDOBScreen({Key? key}) : super(key: key);

  @override
  State<UserInfoDOBScreen> createState() => _UserInfoDOBScreenState();
}

class _UserInfoDOBScreenState extends State<UserInfoDOBScreen> {
  final Color textBlackColor = const Color(0xff303437);
  final String detailText =
      "Verifiy your email to secure access to your account.";
  bool isChecked = false;
  final Color dateInputGreyColor = const Color(0xffCDCFD0);
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
                          "My date of birth",
                          style: GoogleFonts.poppins(
                              fontSize: 24.h,
                              fontWeight: FontWeight.w600,
                              color: textBlackColor),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 102.h),
                    child: SizedBox(
                        height: 25.h,
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 32.w,
                              width: 280.w,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Flexible(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            onChanged: (value) =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                            keyboardType: TextInputType.number,
                                            maxLength: 1,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                counterText: "",
                                                hintText: "D",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 16.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: dateInputGreyColor),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 6.w, right: 6.w)),
                                          ),
                                        )),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Flexible(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            onChanged: (value) =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                            keyboardType: TextInputType.number,
                                            maxLength: 1,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                counterText: "",
                                                hintText: "D",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 16.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: dateInputGreyColor),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 6.w, right: 6.w)),
                                          ),
                                        )),
                                    SizedBox(width: 7.w),
                                    Text(
                                      "/",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w500,
                                          color: dateInputGreyColor),
                                    ),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: TextField(
                                                textAlign: TextAlign.center,
                                                onChanged: (value) =>
                                                    FocusScope.of(context)
                                                        .nextFocus(),
                                                keyboardType:
                                                    TextInputType.number,
                                                maxLength: 1,
                                                textInputAction:
                                                    TextInputAction.next,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    counterText: "",
                                                    hintText: "M",
                                                    hintStyle: GoogleFonts.poppins(
                                                        fontSize: 16.h,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            dateInputGreyColor),
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            left: 6.w,
                                                            right: 6.w)),
                                              ),
                                            ),
                                          ],
                                        )),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              child: TextField(
                                                textAlign: TextAlign.center,
                                                onChanged: (value) =>
                                                    FocusScope.of(context)
                                                        .nextFocus(),
                                                keyboardType:
                                                    TextInputType.number,
                                                maxLength: 1,
                                                textInputAction:
                                                    TextInputAction.next,
                                                decoration: InputDecoration(
                                                    border: InputBorder.none,
                                                    counterText: "",
                                                    hintText: "M",
                                                    hintStyle: GoogleFonts.poppins(
                                                        fontSize: 16.h,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color:
                                                            dateInputGreyColor),
                                                    isDense: true,
                                                    contentPadding:
                                                        EdgeInsets.only(
                                                            left: 6.w,
                                                            right: 6.w)),
                                              ),
                                            ),
                                          ],
                                        )),
                                    SizedBox(width: 7.w),
                                    Text(
                                      "/",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w500,
                                          color: dateInputGreyColor),
                                    ),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Flexible(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            onChanged: (value) =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                            keyboardType: TextInputType.number,
                                            maxLength: 1,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                counterText: "",
                                                hintText: "Y",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 16.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: dateInputGreyColor),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 6.w, right: 6.w)),
                                          ),
                                        )),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Flexible(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            onChanged: (value) =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                            keyboardType: TextInputType.number,
                                            maxLength: 1,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                counterText: "",
                                                hintText: "Y",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 16.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: dateInputGreyColor),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 6.w, right: 6.w)),
                                          ),
                                        )),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Flexible(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            onChanged: (value) =>
                                                FocusScope.of(context)
                                                    .nextFocus(),
                                            keyboardType: TextInputType.number,
                                            maxLength: 1,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                counterText: "",
                                                hintText: "Y",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 16.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: dateInputGreyColor),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 6.w, right: 6.w)),
                                          ),
                                        )),
                                    SizedBox(width: 7.w),
                                    Container(
                                        width: 24.w,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        dateInputGreyColor))),
                                        child: Flexible(
                                          child: TextField(
                                            textAlign: TextAlign.center,
                                            onChanged: (value) =>
                                                FocusScope.of(context)
                                                    .unfocus(),
                                            keyboardType: TextInputType.number,
                                            maxLength: 1,
                                            textInputAction:
                                                TextInputAction.next,
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                counterText: "",
                                                hintText: "Y",
                                                hintStyle: GoogleFonts.poppins(
                                                    fontSize: 16.h,
                                                    fontWeight: FontWeight.w500,
                                                    color: dateInputGreyColor),
                                                isDense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 6.w, right: 6.w)),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
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
