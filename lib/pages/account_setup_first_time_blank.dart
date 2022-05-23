import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';

class AccountInfoFirstTimeBlankScreen extends StatefulWidget {
  const AccountInfoFirstTimeBlankScreen({Key? key}) : super(key: key);

  @override
  State<AccountInfoFirstTimeBlankScreen> createState() =>
      _AccountInfoFirstTimeBlankScreenState();
}

class _AccountInfoFirstTimeBlankScreenState
    extends State<AccountInfoFirstTimeBlankScreen> {
  final String _buttonText1 = "USE RECOMMENDED SET";
  final String _buttonText2 = "CONTINUE";

  static const Color textBlackColor = Color(0xff303437);
  static const Color _whiteColor = Color(0xffffffff);
  static const Color _circularBadgeColor = Color(0xffFCE76B);
  static const Color _textFieldBorderColor = Color(0xffF2F4F5);
  static const Color _textFieldTextColor = Color(0xff72777A);
  static const Color _buttonGreenColor = Color(0xff5BEFBD);

  List<Widget> bankButtons = [
    BankButton(
      isSelected: false,
      buttonLabel: "HSBC",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "BNP",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "Agricole",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "VISA",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "JP Morgan",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "HSBC",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "BNP",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "Agricole",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "VISA",
    ),
    BankButton(
      isSelected: false,
      buttonLabel: "JP Morgan",
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
              child: Center(
                  child: CustomPaint(
                size: Size(20.w, 18.h),
                painter: BagIconPainter(),
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
                        height: 36.h,
                        width: double.maxFinite,
                        child: Center(
                          child: Text(
                            "Select your accounts",
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
                                      runAlignment: WrapAlignment.center,
                                      spacing: 16.w,
                                      runSpacing: 8.h,
                                      direction: Axis.horizontal,
                                      children: bankButtons);
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
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
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
                                hintText: "or type here",
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
                      border: Border.all(color: _buttonGreenColor, width: 1),
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

class BankButton extends StatefulWidget {
  BankButton({Key? key, required this.buttonLabel, required this.isSelected})
      : super(key: key);

  final String buttonLabel;
  bool isSelected = false;

  @override
  State<BankButton> createState() => _BankButtonState();
}

class _BankButtonState extends State<BankButton> {
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

class BagIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(19.1184, 9.07088);
    path_0.cubicTo(19.1109, 8.93076, 18.9643, 8.84324, 18.836, 8.90004);
    path_0.cubicTo(13.265, 11.3667, 6.73513, 11.3667, 1.16421, 8.90003);
    path_0.cubicTo(1.03591, 8.84323, 0.88923, 8.93075, 0.881769, 9.07087);
    path_0.cubicTo(0.779996, 10.9823, 0.882548, 12.9019, 1.18943, 14.7969);
    path_0.cubicTo(1.38151, 15.983, 2.35848, 16.8848, 3.55616, 16.9815);
    path_0.lineTo(5.42808, 17.1326);
    path_0.cubicTo(8.47114, 17.3782, 11.529, 17.3782, 14.5721, 17.1326);
    path_0.lineTo(16.444, 16.9815);
    path_0.cubicTo(17.6417, 16.8848, 18.6187, 15.983, 18.8107, 14.7969);
    path_0.cubicTo(19.1176, 12.9019, 19.2202, 10.9823, 19.1184, 9.07088);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(5.25009, 2.4612);
    path_1.lineTo(5.25009, 3.88179);
    path_1.lineTo(3.55616, 4.01852);
    path_1.cubicTo(2.35848, 4.1152, 1.38151, 5.01697, 1.18943, 6.20309);
    path_1.cubicTo(1.14768, 6.46088, 1.10972, 6.71911, 1.07553, 6.97772);
    path_1.cubicTo(1.05857, 7.10605, 1.127, 7.23027, 1.244, 7.28567);
    path_1.lineTo(1.32106, 7.32215);
    path_1.cubicTo(6.74976, 9.89262, 13.2504, 9.89262, 18.6791, 7.32215);
    path_1.lineTo(18.7562, 7.28567);
    path_1.cubicTo(18.8732, 7.23028, 18.9416, 7.10606, 18.9246, 6.97773);
    path_1.cubicTo(18.8905, 6.71912, 18.8525, 6.46088, 18.8107, 6.20309);
    path_1.cubicTo(18.6187, 5.01697, 17.6417, 4.1152, 16.444, 4.01852);
    path_1.lineTo(14.7501, 3.88179);
    path_1.lineTo(14.7501, 2.4612);
    path_1.cubicTo(14.7501, 1.59495, 14.1163, 0.859058, 13.2597, 0.730559);
    path_1.lineTo(12.0398, 0.547572);
    path_1.cubicTo(10.6875, 0.344738, 9.31263, 0.344739, 7.96041, 0.547572);
    path_1.lineTo(6.7405, 0.730559);
    path_1.cubicTo(5.88384, 0.859058, 5.25009, 1.59495, 5.25009, 2.4612);
    path_1.close();
    path_1.moveTo(11.8173, 2.03098);
    path_1.cubicTo(10.6126, 1.85027, 9.38763, 1.85027, 8.18292, 2.03098);
    path_1.lineTo(6.96301, 2.21396);
    path_1.cubicTo(6.84063, 2.23232, 6.75009, 2.33745, 6.75009, 2.4612);
    path_1.lineTo(6.75009, 3.77621);
    path_1.cubicTo(8.91498, 3.65219, 11.0852, 3.65219, 13.2501, 3.77621);
    path_1.lineTo(13.2501, 2.4612);
    path_1.cubicTo(13.2501, 2.33745, 13.1596, 2.23232, 13.0372, 2.21396);
    path_1.lineTo(11.8173, 2.03098);
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
