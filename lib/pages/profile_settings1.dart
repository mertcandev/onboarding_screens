import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSettingsScreen1 extends StatefulWidget {
  const ProfileSettingsScreen1({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsScreen1> createState() => _ProfileSettingsScreen1State();
}

class _ProfileSettingsScreen1State extends State<ProfileSettingsScreen1> {
  final bool _notificationVisibility = true;
  final String _headerCurrencyButtonText = "USD";
  final Color _headerCurrencyButtonColor = const Color(0xffF45655);
  final Color _headerCurrencyButtonTextColor = const Color(0xffffffff);

  final List<Map> _balanceDetails = [
    {
      "balanceText": "HSBC",
      "balanceMoney": "\$1200.00",
      "boxColor": const Color(0xffFECD57)
    },
    {
      "balanceText": "BNP Paribas",
      "balanceMoney": "\$1200.00",
      "boxColor": const Color(0xff29A164)
    },
    {
      "balanceText": "Credit Agricole",
      "balanceMoney": "\$1200.00",
      "boxColor": const Color(0xffF45655)
    },
    {
      "balanceText": "HSBC",
      "balanceMoney": "\$1200.00",
      "boxColor": const Color(0xffFECD57)
    }
  ];
  final bool _allowLocation = true;
  final bool _allowRanking = true;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Scaffold(
      backgroundColor: const Color(0xff4478DE),
      body: Column(children: [
        Container(
          height: 55.h,
          color: Colors.white,
        ),
        Container(
          height: 58.h,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: EdgeInsets.only(right: 30.w),
                    child: Stack(
                      children: [
                        Container(
                          height: 36.h,
                          width: 36.w,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/avatar.png")),
                              shape: BoxShape.circle),
                        ),
                        Positioned(
                            right: 1.5,
                            top: 1.5,
                            child: Visibility(
                                visible: _notificationVisibility,
                                child: Container(
                                  height: 8.h,
                                  width: 8.w,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Center(
                                      child: Container(
                                    height: 6.h,
                                    width: 6.w,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xffFF5247)),
                                  )),
                                )))
                      ],
                    )),
                Text("Swipe",
                    style: GoogleFonts.poppins(
                        fontSize: 24.h,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff4478DE))),
                Container(
                  height: 32.h,
                  width: 66.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48.sp),
                      color: _headerCurrencyButtonColor),
                  child: Center(
                    child: Text(
                      _headerCurrencyButtonText,
                      style: GoogleFonts.poppins(
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700,
                          color: _headerCurrencyButtonTextColor),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
            child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.visibility_off_rounded,
                            color: Color(0xffffffff),
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            "3 600.00",
                            style: GoogleFonts.poppins(
                                fontSize: 24.h,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffffffff)),
                          ),
                          SizedBox(width: 5.w),
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    const Color(0xffffffff).withOpacity(0.15)),
                            child: Center(
                                child: Icon(
                              Icons.border_color_rounded,
                              color: const Color(0xffffffff),
                              size: 16.h,
                            )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Today",
                      style: GoogleFonts.poppins(
                          fontSize: 12.h,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffffffff)),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 27.h, left: 34.w, right: 4.w, bottom: 10.h),
                      child: Row(
                        children: [
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    const Color(0xffffffff).withOpacity(0.15)),
                            child: Center(
                                child: CustomPaint(
                              size: Size(10.w, 12.h),
                              painter: MobileDataIconPainter(),
                            )),
                          ),
                          SizedBox(width: 6.w),
                          Container(
                            height: 32.h,
                            width: 32.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    const Color(0xffffffff).withOpacity(0.15)),
                            child: Center(
                                child: CustomPaint(
                              size: Size(14.w, 14.h),
                              painter: ChartIconPainter(),
                            )),
                          ),
                          const Spacer(),
                          Text(
                            "All Selected",
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xffffffff)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 468.h,
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          children: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: _balanceDetails.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return ListDisplayListCard(
                                  boxColor: _balanceDetails[index]["boxColor"],
                                  balanceText: _balanceDetails[index]
                                      ["balanceText"],
                                  balanceMoney: _balanceDetails[index]
                                      ["balanceMoney"],
                                );
                              },
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 25.w, right: 10.w, top: 10.h),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: DottedBorder(
                                    strokeWidth: 2.h,
                                    dashPattern: const [10, 5],
                                    color: const Color(0xffffffff)
                                        .withOpacity(0.50),
                                    radius: Radius.circular(20.sp),
                                    borderType: BorderType.RRect,
                                    child: Container(
                                      width: 323.w,
                                      height: 102.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffffff)
                                            .withOpacity(0.15),
                                        borderRadius:
                                            BorderRadius.circular(20.sp),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add_rounded,
                                          size: 30.h,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomPaint(
                                    size: Size(21.w, 10.h),
                                    painter: ArrowPainter(),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 150.h,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )))
      ]),
      bottomNavigationBar: Container(
        height: 70.h,
        color: const Color(0xffffffff),
        child: Row(
          children: [
            SizedBox(width: 20.w),
            CustomPaint(size: Size(20.w, 20.h), painter: ChartIconPainter2()),
            const Spacer(),
            CustomPaint(size: Size(16.w, 18.h), painter: PersonIconPainter()),
            SizedBox(width: 20.w)
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Container(
          height: 70.h,
          width: 70.w,
          decoration: const BoxDecoration(
              color: Color(0xffffffff), shape: BoxShape.circle),
          child: Center(
              child: GestureDetector(
                  onTap: () {
                    _showModalBottomSheet(context);
                  },
                  child: Container(
                    height: 56.h,
                    width: 56.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff84ADFF), Color(0xff4478DE)])),
                    child: Center(
                        child: Icon(
                      Icons.add_rounded,
                      color: const Color(0xffffffff),
                      size: 30.h,
                    )),
                  ))),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
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
                height: 635.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.sp),
                        topRight: Radius.circular(16.sp)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 24.h, bottom: 16.h),
                      child: Container(
                        height: 56.h,
                        width: 56.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFCE76B)),
                        child: const Center(
                            child: Icon(
                          Icons.person_rounded,
                          color: Color(0xffffffff),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                      width: 360.w,
                      child: Center(
                          child: Text(
                        "Profile settings",
                        style: GoogleFonts.poppins(
                            fontSize: 24.h,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff404446)),
                      )),
                    ),
                    Container(
                      height: 131.h,
                      width: 269.w,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              image: AssetImage("assets/picture2.png"))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: SizedBox(
                        height: 56.h,
                        width: double.maxFinite,
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.only(
                              top: 31.h, right: 24.w, left: 24.w),
                          child: Row(
                            children: [
                              Text(
                                "Profile Informations",
                                style: GoogleFonts.poppins(
                                    fontSize: 16.h,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff090A0A)),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15.h,
                              )
                            ],
                          ),
                        )),
                      ),
                    ),
                    Expanded(
                      child: MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: ListView(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.only(
                              left: 35.w, right: 35.w, top: 23.h, bottom: 12.h),
                          children: [
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "Home Currency",
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFCE76B),
                                        borderRadius:
                                            BorderRadius.circular(48.sp)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: Text(
                                          "USD",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "Start month fiscal year",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFCE76B),
                                        borderRadius:
                                            BorderRadius.circular(48.sp)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: Text(
                                          "Jan",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "First day of the week",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFCE76B),
                                        borderRadius:
                                            BorderRadius.circular(48.sp)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: Text(
                                          "Mon.",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "Date format",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFCE76B),
                                        borderRadius:
                                            BorderRadius.circular(48.sp)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: Text(
                                          "dd/mm/yy",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "Budget Reference",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 32.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffFCE76B),
                                        borderRadius:
                                            BorderRadius.circular(48.sp)),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16.w),
                                        child: Text(
                                          "dd/mm/yy",
                                          style: GoogleFonts.poppins(
                                              fontSize: 16.h,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xffffffff)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "Allow location access",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  CupertinoSwitch(
                                      activeColor: const Color(0xffFCE76B),
                                      value: _allowLocation,
                                      onChanged: (value) {})
                                ],
                              )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 12.h),
                              height: 46.h,
                              width: 323.w,
                              child: Center(
                                  child: Row(
                                children: [
                                  Text(
                                    "Allow ranking to other users",
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.poppins(
                                        fontSize: 16.h,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff404446)),
                                  ),
                                  const Spacer(),
                                  CupertinoSwitch(
                                      activeColor: const Color(0xffFCE76B),
                                      value: _allowRanking,
                                      onChanged: (value) {})
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 29.h,
                    )
                  ],
                )),
          );
        });
  }
}

class ListDisplayListCard extends StatelessWidget {
  final String balanceText;
  final String balanceMoney;
  final Color boxColor;
  const ListDisplayListCard(
      {Key? key,
      required this.balanceText,
      required this.balanceMoney,
      required this.boxColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 102.h,
            width: 307.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.sp), color: boxColor),
            child: Padding(
              padding: EdgeInsets.only(top: 20.h, left: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    balanceText,
                    style: GoogleFonts.poppins(
                        fontSize: 14.h,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffffffff)),
                  ),
                  Text(
                    balanceMoney,
                    style: GoogleFonts.poppins(
                        fontSize: 25.h,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffffffff)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 7.w),
          Container(
            height: 102.h,
            width: 9.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.sp),
                color: boxColor.withOpacity(0.5)),
          )
        ],
      ),
    );
  }
}

class MobileDataIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(5.97978, 3.0202);
    path_0.cubicTo(6.17504, 3.21546, 6.49163, 3.21546, 6.68689, 3.0202);
    path_0.lineTo(7.16667, 2.54042);
    path_0.lineTo(7.16667, 9.33331);
    path_0.cubicTo(7.16667, 9.60946, 7.39052, 9.83331, 7.66667, 9.83331);
    path_0.cubicTo(7.94281, 9.83331, 8.16667, 9.60946, 8.16667, 9.33331);
    path_0.lineTo(8.16667, 2.54042);
    path_0.lineTo(8.64645, 3.0202);
    path_0.cubicTo(8.84171, 3.21546, 9.15829, 3.21546, 9.35355, 3.0202);
    path_0.cubicTo(9.54882, 2.82494, 9.54882, 2.50836, 9.35355, 2.31309);
    path_0.lineTo(8.02022, 0.97976);
    path_0.cubicTo(7.82496, 0.784497, 7.50838, 0.784497, 7.31311, 0.97976);
    path_0.lineTo(5.97978, 2.31309);
    path_0.cubicTo(5.78452, 2.50836, 5.78452, 2.82494, 5.97978, 3.0202);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(2.83333, 9.45954);
    path_1.lineTo(3.31311, 8.97976);
    path_1.cubicTo(3.50838, 8.7845, 3.82496, 8.7845, 4.02022, 8.97976);
    path_1.cubicTo(4.21548, 9.17502, 4.21548, 9.4916, 4.02022, 9.68687);
    path_1.lineTo(2.68689, 11.0202);
    path_1.cubicTo(2.49162, 11.2155, 2.17504, 11.2155, 1.97978, 11.0202);
    path_1.lineTo(0.646447, 9.68687);
    path_1.cubicTo(0.451184, 9.4916, 0.451184, 9.17502, 0.646447, 8.97976);
    path_1.cubicTo(0.841709, 8.7845, 1.15829, 8.7845, 1.35355, 8.97976);
    path_1.lineTo(1.83333, 9.45954);
    path_1.lineTo(1.83333, 2.66665);
    path_1.cubicTo(1.83333, 2.3905, 2.05719, 2.16665, 2.33333, 2.16665);
    path_1.cubicTo(2.60948, 2.16665, 2.83333, 2.3905, 2.83333, 2.66665);
    path_1.lineTo(2.83333, 9.45954);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ChartIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(6.49984, 0.830245);
    path_0.cubicTo(6.49984, 0.752515, 6.43324, 0.691168, 6.35591, 0.698978);
    path_0.cubicTo(3.16055, 1.02164, 0.666504, 3.71955, 0.666504, 6.99998);
    path_0.cubicTo(0.666504, 10.4978, 3.50203, 13.3333, 6.99984, 13.3333);
    path_0.cubicTo(8.75765, 13.3333, 10.3483, 12.6169, 11.4954, 11.461);
    path_0.cubicTo(11.5502, 11.4058, 11.5442, 11.3156, 11.4837, 11.2667);
    path_0.lineTo(6.68555, 7.38886);
    path_0.cubicTo(6.5681, 7.29393, 6.49984, 7.151, 6.49984, 6.99998);
    path_0.lineTo(6.49984, 0.830245);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(12.1128, 10.4894);
    path_1.cubicTo(12.1733, 10.5382, 12.2627, 10.5253, 12.3052, 10.4602);
    path_1.cubicTo(12.8446, 9.63478, 13.1966, 8.67561, 13.3009, 7.6436);
    path_1.cubicTo(13.3087, 7.56626, 13.2473, 7.49998, 13.1696, 7.49998);
    path_1.lineTo(8.79106, 7.49998);
    path_1.cubicTo(8.66535, 7.49998, 8.60948, 7.658, 8.70725, 7.73701);
    path_1.lineTo(12.1128, 10.4894);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(13.1696, 6.49998);
    path_2.cubicTo(13.2473, 6.49998, 13.3087, 6.43342, 13.3008, 6.35608);
    path_2.cubicTo(12.9996, 3.37244, 10.6274, 1.00024, 7.64374, 0.698974);
    path_2.cubicTo(7.5664, 0.691165, 7.49984, 0.752516, 7.49984, 0.830245);
    path_2.lineTo(7.49984, 6.29998);
    path_2.cubicTo(7.49984, 6.41044, 7.58938, 6.49998, 7.69984, 6.49998);
    path_2.lineTo(13.1696, 6.49998);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0.480333, 9.09586);
    path_0.cubicTo(-0.122548, 8.58328, -0.100644, 7.77944, 0.529256, 7.30045);
    path_0.lineTo(9.13168, 0.758877);
    path_0.cubicTo(9.76158, 0.279883, 10.7609, 0.307114, 11.3638, 0.8197);
    path_0.lineTo(19.5973, 7.82002);
    path_0.cubicTo(20.2001, 8.33261, 20.1782, 9.13644, 19.5483, 9.61544);
    path_0.cubicTo(18.9184, 10.0944, 17.9191, 10.0672, 17.3162, 9.55461);
    path_0.lineTo(10.1744, 3.48242);
    path_0.lineTo(2.71247, 9.15669);
    path_0.cubicTo(2.08257, 9.63568, 1.08321, 9.60845, 0.480333, 9.09586);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(0.5);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ChartIconPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(9.25, 0.745398);
    path_0.cubicTo(9.25, 0.628804, 9.15011, 0.536783, 9.0341, 0.548497);
    path_0.cubicTo(4.24107, 1.03249, 0.5, 5.07936, 0.5, 10);
    path_0.cubicTo(0.5, 15.2467, 4.75329, 19.5, 10, 19.5);
    path_0.cubicTo(12.6367, 19.5, 15.0227, 18.4254, 16.7434, 16.6915);
    path_0.cubicTo(16.8256, 16.6087, 16.8165, 16.4734, 16.7258, 16.4);
    path_0.lineTo(9.52857, 10.5833);
    path_0.cubicTo(9.35239, 10.4409, 9.25, 10.2265, 9.25, 10);
    path_0.lineTo(9.25, 0.745398);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffCDCFD0).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(17.6695, 15.2341);
    path_1.cubicTo(17.7601, 15.3074, 17.8942, 15.2879, 17.958, 15.1903);
    path_1.cubicTo(18.7671, 13.9522, 19.2952, 12.5134, 19.4515, 10.9654);
    path_1.cubicTo(19.4632, 10.8494, 19.3712, 10.75, 19.2546, 10.75);
    path_1.lineTo(12.6868, 10.75);
    path_1.cubicTo(12.4983, 10.75, 12.4145, 10.987, 12.5611, 11.1055);
    path_1.lineTo(17.6695, 15.2341);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffCDCFD0).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(19.2546, 9.25);
    path_2.cubicTo(19.3712, 9.25, 19.4632, 9.15016, 19.4515, 9.03415);
    path_2.cubicTo(18.9996, 4.55868, 15.4413, 1.00039, 10.9658, 0.548492);
    path_2.cubicTo(10.8498, 0.536779, 10.75, 0.628804, 10.75, 0.745399);
    path_2.lineTo(10.75, 8.95);
    path_2.cubicTo(10.75, 9.11568, 10.8843, 9.25, 11.05, 9.25);
    path_2.lineTo(19.2546, 9.25);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffCDCFD0).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class PersonIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(8, 0.75);
    path_0.cubicTo(5.92893, 0.75, 4.25, 2.42893, 4.25, 4.5);
    path_0.cubicTo(4.25, 6.57107, 5.92893, 8.25, 8, 8.25);
    path_0.cubicTo(10.0711, 8.25, 11.75, 6.57107, 11.75, 4.5);
    path_0.cubicTo(11.75, 2.42893, 10.0711, 0.75, 8, 0.75);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffCDCFD0).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(4, 10.25);
    path_1.cubicTo(1.92893, 10.25, 0.25, 11.9289, 0.25, 14);
    path_1.lineTo(0.25, 15.1883);
    path_1.cubicTo(0.25, 15.9415, 0.795884, 16.5837, 1.53927, 16.7051);
    path_1.cubicTo(5.8181, 17.4037, 10.1819, 17.4037, 14.4607, 16.7051);
    path_1.cubicTo(15.2041, 16.5837, 15.75, 15.9415, 15.75, 15.1883);
    path_1.lineTo(15.75, 14);
    path_1.cubicTo(15.75, 11.9289, 14.0711, 10.25, 12, 10.25);
    path_1.lineTo(11.6591, 10.25);
    path_1.cubicTo(11.4746, 10.25, 11.2913, 10.2792, 11.1159, 10.3364);
    path_1.lineTo(10.2504, 10.6191);
    path_1.cubicTo(8.78813, 11.0965, 7.21187, 11.0965, 5.74959, 10.6191);
    path_1.lineTo(4.88407, 10.3364);
    path_1.cubicTo(4.70869, 10.2792, 4.52536, 10.25, 4.34087, 10.25);
    path_1.lineTo(4, 10.25);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffCDCFD0).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
