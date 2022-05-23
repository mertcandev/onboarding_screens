import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class UserInfoCountryCurrencyScreen2 extends StatefulWidget {
  const UserInfoCountryCurrencyScreen2({Key? key}) : super(key: key);

  @override
  State<UserInfoCountryCurrencyScreen2> createState() =>
      _UserInfoCountryCurrencyScreen2State();
}

class _UserInfoCountryCurrencyScreen2State
    extends State<UserInfoCountryCurrencyScreen2> {
  final Color textBlackColor = const Color(0xff303437);
  final String detailText =
      "Verifiy your email to secure access to your account.";
  bool isChecked = false;
  final Color dateInputGreyColor = const Color(0xffCDCFD0);

  List<Map> countryList = [
    {"country": "France", "isChecked": false},
    {"country": "Germany", "isChecked": false},
    {"country": "Spain", "isChecked": false},
    {"country": "Italy", "isChecked": false},
    {"country": "Finland", "isChecked": false},
    {"country": "Norway", "isChecked": false},
    {"country": "Denmark", "isChecked": false},
    {"country": "Czech Republic", "isChecked": false},
    {"country": "Romania", "isChecked": false},
    {"country": "Austria", "isChecked": false},
    {"country": "UK", "isChecked": false},
    {"country": "United States", "isChecked": false}
  ];

  List<String> countries = [
    "France",
    "Germany",
    "Spain",
    "Italy",
    "Finland",
    "Norway",
    "Denmark",
    "Czech Republic",
    "Romania",
    "Austria",
    "UK",
    "United States"
  ];
  bool isCountrySelected = true;
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
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: SizedBox(
                        height: 36.h,
                        width: double.maxFinite,
                        child: Center(
                          child: Text(
                            "I Live in",
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w600,
                                color: textBlackColor),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 13.h, left: 17.w, right: 17.w, bottom: 18.h),
                      child: SizedBox(
                        height: 24.h,
                        width: double.maxFinite,
                        child: Text(
                          "Select all countries where you live",
                          style: GoogleFonts.inter(
                              fontSize: 16.h,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff979C9E)),
                        ),
                      ),
                    ),
                    Expanded(child: StatefulBuilder(
                      builder: (context, setState) {
                        return ListView(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[0]["isChecked"] =
                                        !countryList[0]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[0]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[0]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[0]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[0]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[1]["isChecked"] =
                                        !countryList[1]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[1]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[1]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[1]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[1]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[2]["isChecked"] =
                                        !countryList[2]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[2]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[2]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[2]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[2]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[3]["isChecked"] =
                                        !countryList[3]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[3]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[3]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[3]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[3]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[4]["isChecked"] =
                                        !countryList[4]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[4]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[4]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[4]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[4]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[5]["isChecked"] =
                                        !countryList[5]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[5]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[5]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[5]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[5]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[6]["isChecked"] =
                                        !countryList[6]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[6]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[6]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[6]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[6]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[7]["isChecked"] =
                                        !countryList[7]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[7]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[7]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[7]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[7]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[8]["isChecked"] =
                                        !countryList[8]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[8]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[8]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[8]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[8]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[9]["isChecked"] =
                                        !countryList[9]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[9]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[9]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[9]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[9]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[10]["isChecked"] =
                                        !countryList[10]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[10]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[10]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[10]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[10]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    countryList[11]["isChecked"] =
                                        !countryList[11]["isChecked"];
                                  },
                                );
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: countryList[11]["isChecked"] == true
                                        ? 18.w
                                        : 24.w,
                                    right: 20.w),
                                child: Row(
                                  children: [
                                    Text(
                                      countryList[11]["country"],
                                      style: GoogleFonts.poppins(
                                          fontSize: 18.h,
                                          fontWeight: countryList[11]
                                                      ["isChecked"] ==
                                                  true
                                              ? FontWeight.w600
                                              : FontWeight.w400),
                                    ),
                                    const Spacer(),
                                    Visibility(
                                        visible: countryList[11]["isChecked"],
                                        child: const Icon(
                                          Icons.check_rounded,
                                          color: Color(0xffFFB323),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ))
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
