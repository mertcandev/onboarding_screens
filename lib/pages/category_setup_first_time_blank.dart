import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class CategorySetupFirstTimeBlankScreen extends StatefulWidget {
  const CategorySetupFirstTimeBlankScreen({Key? key}) : super(key: key);

  @override
  State<CategorySetupFirstTimeBlankScreen> createState() =>
      _CategorySetupFirstTimeBlankScreenState();
}

class _CategorySetupFirstTimeBlankScreenState
    extends State<CategorySetupFirstTimeBlankScreen> {
  final String _buttonText1 = "USE RECOMMENDED SET";
  final String _buttonText2 = "CONTINUE";

  static const Color textBlackColor = Color(0xff303437);
  static const Color _whiteColor = Color(0xffffffff);
  static const Color _circularBadgeColor = Color(0xffFCE76B);
  static const Color _textFieldBorderColor = Color(0xffF2F4F5);
  static const Color _textFieldTextColor = Color(0xff72777A);
  static const Color _buttonGreenColor = Color(0xff5BEFBD);

  List<Widget> categoryButtons = [
    CategoryButton(
      isSelected: false,
      buttonLabel: "Travel",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Food",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Education",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Entertainment",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Gov. fees",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Tax",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Subscription",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Transportation",
    ),
    CategoryButton(
      isSelected: false,
      buttonLabel: "Other",
    ),
  ];

  String value = "";

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
                  shape: BoxShape.circle, color: _circularBadgeColor),
              child: Center(
                  child: CustomPaint(
                size: Size(14.w, 20.h),
                painter: BookmarkIconPainter(),
              )),
            ),
            SizedBox(height: 15.h),
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: SizedBox(
                        height: 72.h,
                        width: double.maxFinite,
                        child: Center(
                          child: Text(
                            "Which ones could be your\nCategories?",
                            textAlign: TextAlign.center,
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
                          left: 15.w, right: 15.w, top: 33.h, bottom: 16.h),
                      child: SizedBox(
                        height: 164.h,
                        width: 329.w,
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            physics: const BouncingScrollPhysics(),
                            children: [
                              StatefulBuilder(
                                builder: (context, setState) {
                                  return Wrap(
                                      alignment: WrapAlignment.start,
                                      runAlignment: WrapAlignment.start,
                                      spacing: 16.w,
                                      runSpacing: 8.h,
                                      direction: Axis.horizontal,
                                      children: categoryButtons);
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, bottom: 30.h, top: 15.h),
              child: Container(
                height: 48.h,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: _textFieldBorderColor, width: 2.w),
                    borderRadius: BorderRadius.circular(8.sp)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Flexible(
                          child: TextField(
                            showCursor: false,
                            style: GoogleFonts.poppins(
                                fontSize: 14.h,
                                fontWeight: FontWeight.w600,
                                color: _textFieldTextColor),
                            onChanged: (text) {
                              value = text;
                            },
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Bank de France",
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 14.h,
                                    fontWeight: FontWeight.w400,
                                    color: _textFieldTextColor)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Icon(Icons.add_box_rounded,
                              color: const Color(0xffFADB28), size: 18.h),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
          footer: Container(
            padding: EdgeInsets.only(left: 25.w, right: 25.w),
            color: _whiteColor,
            height: 130.h,
            child: Center(
                child: Column(
              children: [
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.sp),
                      border: Border.all(color: _buttonGreenColor, width: 1.w),
                      color: _whiteColor),
                  child: Center(
                    child: Text(
                      _buttonText1,
                      style: GoogleFonts.poppins(
                          fontSize: 16.h,
                          fontWeight: FontWeight.w500,
                          color: _buttonGreenColor),
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.sp),
                      color: _buttonGreenColor),
                  child: Center(
                    child: Text(
                      _buttonText2,
                      style: GoogleFonts.poppins(
                          fontSize: 16.h,
                          fontWeight: FontWeight.w500,
                          color: _whiteColor),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ));
  }
}

class CategoryButton extends StatefulWidget {
  CategoryButton(
      {Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  final Color buttonWhiteColor = const Color(0xffffffff);
  final Color backgroundColor = const Color(0xff5BEFBD);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widget.isSelected = !widget.isSelected;
          });
        },
        child: /* Container(
        height: 36.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.sp),
            border: Border.all(
                color: widget.isSelected == true
                    ? const Color(0xffC4C4C4)
                    : const Color(0xffC4C4C4),
                width: widget.isSelected == true ? 3 : 1)),
        child: Center(
          child: Text(
            widget.buttonLabel,
            style: GoogleFonts.poppins(
                fontSize: 16.h,
                fontWeight: FontWeight.w700,
                color: widget.isSelected == true
                    ? const Color(0xffC4C4C4)
                    : buttonWhiteColor.withOpacity(0.7)),
          ),
        ),
      ),
 */
            Chip(
                backgroundColor: Colors.white,
                label: Text(
                  widget.buttonLabel,
                ),
                side: BorderSide(
                    color: widget.isSelected == true
                        ? const Color(0xff5BEFBD)
                        : const Color(0xffC4C4C4),
                    width: 2),
                labelStyle: GoogleFonts.poppins(
                    fontSize: 14.h,
                    fontWeight: FontWeight.w600,
                    color: widget.isSelected == true
                        ? const Color(0xff5BEFBD)
                        : const Color(0xffC4C4C4))));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(11.1308, 1.18554);
    path_0.cubicTo(8.40081, 0.727868, 5.59901, 0.727868, 2.86906, 1.18554);
    path_0.cubicTo(1.87171, 1.35274, 1.07745, 2.11841, 0.877479, 3.11118);
    path_0.cubicTo(-0.0386411, 7.65927, -0.0886272, 12.3393, 0.730142, 16.906);
    path_0.lineTo(1.06349, 18.7652);
    path_0.cubicTo(1.16628, 19.3385, 1.86519, 19.5676, 2.28745, 19.1665);
    path_0.lineTo(6.31116, 15.344);
    path_0.cubicTo(6.69713, 14.9773, 7.3027, 14.9773, 7.68866, 15.344);
    path_0.lineTo(11.7124, 19.1665);
    path_0.cubicTo(12.1346, 19.5676, 12.8335, 19.3385, 12.9363, 18.7652);
    path_0.lineTo(13.2697, 16.906);
    path_0.cubicTo(14.0884, 12.3394, 14.0385, 7.65927, 13.1223, 3.11118);
    path_0.cubicTo(12.9224, 2.11841, 12.1281, 1.35274, 11.1308, 1.18554);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BookmarkIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(11.1308, 1.18554);
    path_0.cubicTo(8.40081, 0.727868, 5.59901, 0.727868, 2.86906, 1.18554);
    path_0.cubicTo(1.87171, 1.35274, 1.07745, 2.11841, 0.877479, 3.11118);
    path_0.cubicTo(-0.0386411, 7.65927, -0.0886272, 12.3393, 0.730142, 16.906);
    path_0.lineTo(1.06349, 18.7652);
    path_0.cubicTo(1.16628, 19.3385, 1.86519, 19.5676, 2.28745, 19.1665);
    path_0.lineTo(6.31116, 15.344);
    path_0.cubicTo(6.69713, 14.9773, 7.3027, 14.9773, 7.68866, 15.344);
    path_0.lineTo(11.7124, 19.1665);
    path_0.cubicTo(12.1346, 19.5676, 12.8335, 19.3385, 12.9363, 18.7652);
    path_0.lineTo(13.2697, 16.906);
    path_0.cubicTo(14.0884, 12.3394, 14.0385, 7.65927, 13.1223, 3.11118);
    path_0.cubicTo(12.9224, 2.11841, 12.1281, 1.35274, 11.1308, 1.18554);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
