import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoCountryCurrencyScreen3 extends StatefulWidget {
  const UserInfoCountryCurrencyScreen3({Key? key}) : super(key: key);

  @override
  State<UserInfoCountryCurrencyScreen3> createState() =>
      _UserInfoCountryCurrencyScreen3State();
}

class _UserInfoCountryCurrencyScreen3State
    extends State<UserInfoCountryCurrencyScreen3> {
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
                                    onTap: () {},
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
