import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchingScreen extends StatelessWidget {
  const LaunchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color kLaunchingPageTextColor = Color(0xff404446);
    ScreenUtil.init(context);
    return Scaffold(
        body: Container(
      height: 800.h,
      width: 360.w,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/launchingPageBackground.png"),
              fit: BoxFit.cover)),
      child: Column(children: [
        SizedBox(height: 500.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: Colors.white),
              child: Center(
                child: CustomPaint(
                  size: Size(51.w, 43.h),
                  painter: LogoPainter(),
                ),
              ),
            ),
            SizedBox(width: 24.w),
            Text(
              "Smart\nfinance\npartner!",
              style: GoogleFonts.poppins(
                  fontSize: 32.h,
                  fontWeight: FontWeight.w600,
                  color: kLaunchingPageTextColor,
                  height: 1),
            ),
            SizedBox(width: 40.w)
          ],
        ),
      ]),
    ));
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(39.9355, 12.1479);
    path_0.lineTo(31.2573, 20.517);
    path_0.lineTo(39.412, 29.4233);
    path_0.cubicTo(44.2079, 24.7983, 44.4421, 17.0699, 39.9355, 12.1479);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff303437).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(28.8037, 11.8159);
    path_1.lineTo(19.8429, 19.8652);
    path_1.lineTo(11.9996, 10.669);
    path_1.cubicTo(16.9517, 6.22068, 24.4693, 6.73378, 28.8037, 11.8159);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff63DAFF).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(10.5576, 28.4331);
    path_2.lineTo(19.5185, 20.3838);
    path_2.lineTo(11.6752, 11.1876);
    path_2.cubicTo(6.72315, 15.6359, 6.22318, 23.351, 10.5576, 28.4331);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffFADB28).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(11.0635, 28.769);
    path_3.lineTo(20.0243, 20.7197);
    path_3.lineTo(27.8676, 29.916);
    path_3.cubicTo(22.9155, 34.3643, 15.3979, 33.8512, 11.0635, 28.769);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff23D09C).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
