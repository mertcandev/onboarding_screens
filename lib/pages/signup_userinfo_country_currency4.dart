import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoCountryCurrencyScreen4 extends StatefulWidget {
  const UserInfoCountryCurrencyScreen4({Key? key}) : super(key: key);

  @override
  State<UserInfoCountryCurrencyScreen4> createState() =>
      _UserInfoCountryCurrencyScreen4State();
}

class _UserInfoCountryCurrencyScreen4State
    extends State<UserInfoCountryCurrencyScreen4> {
  final Color textBlackColor = const Color(0xff303437);
  List<Widget> currencyButton = [
    CurrencyButton(
      isSelected: true,
      buttonLabel: "USD",
    ),
    CurrencyButton(
      isSelected: false,
      buttonLabel: "EUR",
    ),
  ];

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
                          "I Live in...",
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
                        EdgeInsets.only(top: 110.h, left: 54.w, right: 54.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 216.w,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom:
                                      BorderSide(color: Color(0xffC4C4C4)))),
                          child: Center(
                              child: Row(
                            children: [
                              Text("France, United States",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18.h,
                                      fontWeight: FontWeight.w400,
                                      color: textBlackColor))
                            ],
                          )),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 24.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.sp),
                                color: const Color(0xffFADB28)),
                            child: const Center(
                                child: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: Colors.white,
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 33.w, right: 52.w, top: 92.h),
                      child: StatefulBuilder(
                        builder: (context, setState) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 40.h,
                                width: 230.w,
                                child: MediaQuery.removePadding(
                                  context: context,
                                  removeTop: true,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    physics: const BouncingScrollPhysics(),
                                    children: currencyButton,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: GestureDetector(
                                    onTap: () {
                                      _showModalBottomSheet(context);
                                    },
                                    child: const Icon(
                                      Icons.add_box_rounded,
                                      color: Color(0xffFADB28),
                                    )),
                              )
                            ],
                          );
                        },
                      )),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 50.w, right: 50.w, top: 18.h),
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: "Tab the currency that should be your ",
                            style: GoogleFonts.inter(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff72777A)),
                            children: [
                              TextSpan(
                                text: "Default Currency",
                                style: GoogleFonts.inter(
                                    fontSize: 16.h,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff72777A)),
                              )
                            ])),
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

  Future<dynamic> _showModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        useRootNavigator: true,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
              height: 510.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.sp),
                      topRight: Radius.circular(16.sp)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(24.h),
                          child: Text(
                            "Add Currency",
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w600,
                                color: textBlackColor),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: 24.w, left: 24.w, bottom: 16.h),
                          child: Container(
                            height: 36.h,
                            width: 327.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffF2F4F5),
                              borderRadius: BorderRadius.circular(8.sp),
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.w),
                                    child: Icon(Icons.search_rounded,
                                        color: const Color(0xff090A0A),
                                        size: 16.h),
                                  ),
                                  Flexible(
                                    child: TextField(
                                      style: GoogleFonts.inter(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w600,
                                          color: textBlackColor),
                                      showCursor: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Search",
                                        hintStyle: GoogleFonts.inter(
                                            fontSize: 16.h,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff6C7072)),
                                      ),
                                    ),
                                  )
                                  /* Text(
                                    "Search",
                                    style: GoogleFonts.inter(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w400,
                                        color: Utils.kModalSheetSearchTextColor),
                                  ) */
                                ]),
                          ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.w, right: 24.w, top: 16.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 56.h,
                                    width: 360.w,
                                    child: Text(
                                      "EUR",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 56.h,
                                    width: 310.w,
                                    child: Text(
                                      "GBP",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 310.w,
                                    height: 56.h,
                                    child: Text(
                                      "CAD",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 310.w,
                                    height: 56.h,
                                    child: Text(
                                      "MAD",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 310.w,
                                    height: 56.h,
                                    child: Text(
                                      "AED",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 310.w,
                                    height: 56.h,
                                    child: Text(
                                      "JPY",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 70.h,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    color: const Color(0xff979C9E)
                                        .withOpacity(0.5)))),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Cancel",
                            style: GoogleFonts.poppins(
                                fontSize: 16.h,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xff979C9E)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class CurrencyButton extends StatefulWidget {
  CurrencyButton(
      {Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<CurrencyButton> createState() => _CurrencyButtonState();
}

class _CurrencyButtonState extends State<CurrencyButton> {
  final Color buttonWhiteColor = const Color(0xffffffff);
  final Color backgroundColor = const Color(0xff5BEFBD);
  final Color buttonGreenColor = const Color(0xff5BEFBD);
  final Color buttonGreyColor = const Color(0xffCDCFD0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.w),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        child: Container(
          height: 40.h,
          width: 92.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.sp),
              border: Border.all(
                  color: widget.isSelected == true
                      ? buttonGreenColor
                      : buttonGreyColor,
                  width: 2.w)),
          child: Center(
            child: Text(
              widget.buttonLabel,
              style: GoogleFonts.poppins(
                fontSize: 18.h,
                fontWeight: FontWeight.w600,
                color: widget.isSelected == true
                    ? buttonGreenColor
                    : buttonGreyColor,
              ),
            ),
          ),
        ),

        /*  Chip(
            backgroundColor: backgroundColor,
            label: SizedBox(
              height: 40.h,
              width: 92.w,
              child: Center(
                child: Text(
                  widget.buttonLabel,
                ),
              ),
            ),
            side: BorderSide(
                color: widget.isSelected == true
                    ? buttonWhiteColor
                    : buttonWhiteColor.withOpacity(0.7),
                width: widget.isSelected == true ? 3 : 1),
            labelStyle: GoogleFonts.poppins(
                fontSize: 14.h,
                fontWeight:
                    widget.isSelected == true ? FontWeight.w700 : FontWeight.w600,
                color: widget.isSelected == true
                    ? buttonWhiteColor
                    : buttonWhiteColor.withOpacity(0.7)),
          ) */
      ),
    );
  }
}
