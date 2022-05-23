import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class CentersSetupFirstTimeBlankScreen extends StatefulWidget {
  const CentersSetupFirstTimeBlankScreen({Key? key}) : super(key: key);

  @override
  State<CentersSetupFirstTimeBlankScreen> createState() =>
      _CentersSetupFirstTimeBlankScreenState();
}

class _CentersSetupFirstTimeBlankScreenState
    extends State<CentersSetupFirstTimeBlankScreen> {
      final String _buttonText1 = "USE RECOMMENDED SET";
  final String _buttonText2 = "CONTINUE";

  static const Color textBlackColor = Color(0xff303437);
  static const Color _whiteColor = Color(0xffffffff);
  static const Color _circularBadgeColor = Color(0xffFCE76B);
  static const Color _textFieldBorderColor = Color(0xffF2F4F5);
  static const Color _textFieldTextColor = Color(0xff72777A);
  static const Color _buttonGreenColor = Color(0xff5BEFBD);

  List<Widget> centerButtons = [
    CenterButton(
      isSelected: false,
      buttonLabel: "Personal",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Family",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Side Project",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Work",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Team",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "World Tour",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Start Up",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "University",
    ),
    CenterButton(
      isSelected: false,
      buttonLabel: "Other",
    ),
  ];

  String value = "";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        backgroundColor: _whiteColor,
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
              child:  Center(
                  child: CustomPaint(
    size: Size(24.w, 18.h), 
    painter: FolderIconPainter(),
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
                            "Which ones could be your\nCost Center?",
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
                        width: 318.w,
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
                                      children: centerButtons);
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
                      border:
                          Border.all(color: _buttonGreenColor, width: 1.w),
                      color: const Color(0XFFFFFFFF)),
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

class CenterButton extends StatefulWidget {
  CenterButton({Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<CenterButton> createState() => _CenterButtonState();
}

class _CenterButtonState extends State<CenterButton> {
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
                    width: 2.w),
                labelStyle: GoogleFonts.poppins(
                    fontSize: 14.h,
                    fontWeight: FontWeight.w600,
                    color: widget.isSelected == true
                        ? const Color(0xff5BEFBD)
                        : const Color(0xffC4C4C4))));
  }
}

class FolderIconPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(23.4391,15.2073);
    path_0.cubicTo(24.0289,11.9793,24.066,8.67455,23.5488,5.43413);
    path_0.lineTo(23.4633,4.89889);
    path_0.cubicTo(23.2404,3.50239,22.0358,2.47483,20.6217,2.47483);
    path_0.lineTo(9.00454,2.47483);
    path_0.cubicTo(8.96083,2.47483,8.9254,2.43939,8.9254,2.39569);
    path_0.cubicTo(8.9254,1.07259,7.85281,0,6.52971,0);
    path_0.lineTo(3.47429,0);
    path_0.cubicTo(2.00336,0,0.764385,1.09909,0.589008,2.55954);
    path_0.lineTo(0.225693,5.58502);
    path_0.cubicTo(-0.152549,8.73484,-0.0549313,11.9236,0.515274,15.0444);
    path_0.cubicTo(0.747968,16.318,1.8131,17.2726,3.10444,17.365);
    path_0.lineTo(5.12312,17.5094);
    path_0.cubicTo(9.69658,17.8366,14.2876,17.8366,18.861,17.5094);
    path_0.lineTo(21.0448,17.3532);
    path_0.cubicTo(22.239,17.2678,23.2239,16.385,23.4391,15.2073);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Colors.white.withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}