import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfileOverview extends StatefulWidget {
  const UserProfileOverview({Key? key}) : super(key: key);

  @override
  State<UserProfileOverview> createState() => _UserProfileOverviewState();
}

class _UserProfileOverviewState extends State<UserProfileOverview> {
  final String _bottomImagePath = "assets/bottom_image.png";
  final String _avatarImagePath = "assets/avatar_large.png";
  final String _planText = "Basic Plan";
  final String _phoneNumberText = "+ 33 6 50 50 5555";
  final String _buttonLabel1 = "SETTINGS";
  final String _buttonLabel2 = "PHOTO";
  final String _buttonLabel3 = "EDIT INFO";

  int pageViewIndex = 1;

  static const Color _circularButtonColor = Color(0xffFCE76B);
  static const Color _whiteColor = Color(0xffffffff);
  static const Color _avatarBadgeColor = Color(0xff979797);
  static const Color _textGreyColor = Color(0xff404446);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        backgroundColor: _whiteColor,
        resizeToAvoidBottomInset: true,
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(top: 44.h),
            child: SizedBox(
                height: 56.h,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: SizedBox(
                            height: 24.h,
                            width: 24.h,
                            child: Center(
                                child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20.h,
                            ))),
                      ),
                      Container(
                        height: 56.h,
                        width: 56.w,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: _circularButtonColor),
                        child: const Center(
                            child: Icon(
                          Icons.person_rounded,
                          color: _whiteColor,
                        )),
                      ),
                      SizedBox(
                        height: 24.h,
                        width: 24.w,
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 122.h,
                  width: 122.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            const Color(0xff979797).withOpacity(0.15),
                            const Color(0xff979797)
                          ])),
                ),
                Container(
                  height: 115.h,
                  width: 115.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: _whiteColor,
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(_avatarImagePath),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 23.h,
                    width: 101.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.sp),
                        color: _avatarBadgeColor),
                    child: Center(
                        child: Text(
                      _planText,
                      style: GoogleFonts.poppins(
                          fontSize: 10.h,
                          fontWeight: FontWeight.w600,
                          color: _whiteColor),
                    )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Text(
              "Emily",
              style: GoogleFonts.poppins(
                fontSize: 18.h,
                fontWeight: FontWeight.w600,
                color: _textGreyColor,
              ),
            ),
          ),
          Text(_phoneNumberText,
              style: GoogleFonts.poppins(
                fontSize: 14.h,
                fontWeight: FontWeight.w400,
                color: _textGreyColor,
              )),
          Padding(
            padding: EdgeInsets.only(top: 53.h, left: 44.w, right: 44.w),
            child: SizedBox(
              height: 85.h,
              width: 271.w,
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xff979C9E)
                                          .withOpacity(0.5),
                                      blurRadius: 3,
                                      offset: const Offset(0, 3))
                                ],
                                color: _circularButtonColor,
                                shape: BoxShape.circle),
                            child: Center(
                                child: CustomPaint(
                              size: Size(18.w, 18.h),
                              painter: DotsIconPainter(),
                            )),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            _buttonLabel1,
                            style: GoogleFonts.poppins(
                                fontSize: 12.h,
                                fontWeight: FontWeight.w500,
                                color: _textGreyColor),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 56.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xff979C9E)
                                          .withOpacity(0.5),
                                      blurRadius: 3,
                                      offset: const Offset(0, 3))
                                ],
                                color: _circularButtonColor,
                                shape: BoxShape.circle),
                            child: Center(
                                child: CustomPaint(
                              size: Size(22.w, 19.h),
                              painter: CameraIconPainter(),
                            )),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            _buttonLabel2,
                            style: GoogleFonts.poppins(
                                fontSize: 12.h,
                                fontWeight: FontWeight.w500,
                                color: _textGreyColor),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xff979C9E)
                                          .withOpacity(0.5),
                                      blurRadius: 3,
                                      offset: const Offset(0, 3))
                                ],
                                color: _circularButtonColor,
                                shape: BoxShape.circle),
                            child: Center(
                                child: CustomPaint(
                              size: Size(15.w, 15.h),
                              painter: PenIconPainter(),
                            )),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            _buttonLabel3,
                            style: GoogleFonts.poppins(
                                fontSize: 12.h,
                                fontWeight: FontWeight.w500,
                                color: _textGreyColor),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 11.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: pageViewIndex == 0 ? 12.h : 8.h,
                  width: pageViewIndex == 0 ? 12.h : 8.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageViewIndex == 0
                          ? const Color(0xffFCE76B)
                          : const Color(0xffE3E5E5)),
                ),
                SizedBox(width: 8.w),
                Container(
                  height: pageViewIndex == 1 ? 12.h : 8.h,
                  width: pageViewIndex == 1 ? 12.h : 8.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageViewIndex == 1
                          ? const Color(0xffFCE76B)
                          : const Color(0xffE3E5E5)),
                ),
                SizedBox(width: 8.w),
                Container(
                  height: pageViewIndex == 2 ? 12.h : 8.h,
                  width: pageViewIndex == 2 ? 12.h : 8.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: pageViewIndex == 2
                          ? const Color(0xffFCE76B)
                          : const Color(0xffE3E5E5)),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w, right: 21.w, bottom: 20.h),
            child: Container(
              height: 158.h,
              width: 323.w,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(_bottomImagePath))),
            ),
          )
        ]));
  }
}

class DotsIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(
                0, 0, size.width * 0.4444444, size.height * 0.4444444),
            bottomRight: Radius.circular(size.width * 0.1388889),
            bottomLeft: Radius.circular(size.width * 0.1388889),
            topLeft: Radius.circular(size.width * 0.1388889),
            topRight: Radius.circular(size.width * 0.1388889)),
        paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.5555556, 0, size.width * 0.4444444,
                size.height * 0.4444444),
            bottomRight: Radius.circular(size.width * 0.1388889),
            bottomLeft: Radius.circular(size.width * 0.1388889),
            topLeft: Radius.circular(size.width * 0.1388889),
            topRight: Radius.circular(size.width * 0.1388889)),
        paint1Fill);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(size.width * 0.5555556, size.height * 0.5555556,
                size.width * 0.4444444, size.height * 0.4444444),
            bottomRight: Radius.circular(size.width * 0.1388889),
            bottomLeft: Radius.circular(size.width * 0.1388889),
            topLeft: Radius.circular(size.width * 0.1388889),
            topRight: Radius.circular(size.width * 0.1388889)),
        paint2Fill);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawRRect(
        RRect.fromRectAndCorners(
            Rect.fromLTWH(0, size.height * 0.5555556, size.width * 0.4444444,
                size.height * 0.4444444),
            bottomRight: Radius.circular(size.width * 0.1388889),
            bottomLeft: Radius.circular(size.width * 0.1388889),
            topLeft: Radius.circular(size.width * 0.1388889),
            topRight: Radius.circular(size.width * 0.1388889)),
        paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CameraIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(5.7195, 3.91619);
    path_0.cubicTo(5.7195, 1.89141, 7.36091, 0.25, 9.38569, 0.25);
    path_0.lineTo(12.6147, 0.25);
    path_0.cubicTo(14.6395, 0.25, 16.2809, 1.89141, 16.2809, 3.91619);
    path_0.cubicTo(16.2809, 3.9335, 16.2942, 3.94792, 16.3115, 3.94932);
    path_0.lineTo(18.9127, 4.16057);
    path_0.cubicTo(20.0778, 4.2552, 21.0361, 5.11683, 21.2536, 6.26544);
    path_0.cubicTo(21.8085, 9.19646, 21.8499, 12.2016, 21.3759, 15.1468);
    path_0.lineTo(21.2624, 15.8517);
    path_0.cubicTo(21.0485, 17.1804, 19.9549, 18.1913, 18.6135, 18.3003);
    path_0.lineTo(16.3475, 18.4843);
    path_0.cubicTo(12.7885, 18.7734, 9.21192, 18.7734, 5.65292, 18.4843);
    path_0.lineTo(3.38687, 18.3003);
    path_0.cubicTo(2.04546, 18.1913, 0.951866, 17.1804, 0.737997, 15.8517);
    path_0.lineTo(0.624538, 15.1468);
    path_0.cubicTo(0.150486, 12.2016, 0.191867, 9.19646, 0.746835, 6.26544);
    path_0.cubicTo(0.964315, 5.11683, 1.92258, 4.2552, 3.08776, 4.16057);
    path_0.lineTo(5.68895, 3.94932);
    path_0.cubicTo(5.70621, 3.94792, 5.7195, 3.9335, 5.7195, 3.91619);
    path_0.close();
    path_0.moveTo(11.0002, 5.79167);
    path_0.cubicTo(8.58399, 5.79167, 6.62523, 7.75042, 6.62523, 10.1667);
    path_0.cubicTo(6.62523, 12.5829, 8.58399, 14.5417, 11.0002, 14.5417);
    path_0.cubicTo(13.4165, 14.5417, 15.3752, 12.5829, 15.3752, 10.1667);
    path_0.cubicTo(15.3752, 7.75042, 13.4165, 5.79167, 11.0002, 5.79167);
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

class PenIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(11.1379, 0);
    path_0.cubicTo(11.2761, 0, 11.4085, 0.0548733, 11.5062, 0.152548);
    path_0.lineTo(14.4525, 3.09883);
    path_0.cubicTo(14.6559, 3.30222, 14.6559, 3.632, 14.4525, 3.8354);
    path_0.lineTo(4.87707, 13.4108);
    path_0.cubicTo(4.81164, 13.4762, 4.72995, 13.5231, 4.64042, 13.5464);
    path_0.lineTo(0.652472, 14.5881);
    path_0.cubicTo(0.473572, 14.6348, 0.283307, 14.5832, 0.15256, 14.4525);
    path_0.cubicTo(0.0218139, 14.3217, -0.0298105, 14.1315, 0.0169183, 13.9526);
    path_0.lineTo(1.05859, 9.96461);
    path_0.cubicTo(1.08197, 9.87508, 1.12879, 9.79339, 1.19423, 9.72795);
    path_0.lineTo(10.7696, 0.152548);
    path_0.cubicTo(10.8673, 0.0548733, 10.9998, 0, 11.1379, 0);
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
