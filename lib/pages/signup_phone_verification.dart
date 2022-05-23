import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:keyboard_attachable/keyboard_attachable.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class SignupPhoneVerificationScreen extends StatefulWidget {
  const SignupPhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<SignupPhoneVerificationScreen> createState() =>
      _SignupPhoneVerificationScreenState();
}

class _SignupPhoneVerificationScreenState
    extends State<SignupPhoneVerificationScreen> {
  final Color textBlackColor = const Color(0xff303437);
  final String detailText =
      "we will send a text with verification code. Message and data rates may apply. The verified phone number can be used to sign in.";

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
              padding: EdgeInsets.only(top: 60.h, left: 20.w, right: 24.w),
              child: SizedBox(
                  height: 48.h,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: const Icon(
                          Icons.disabled_by_default_rounded,
                          color: Color(0xffFADB28),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "Change number",
                        style: GoogleFonts.poppins(
                            fontSize: 16.h,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff979C9E)),
                      )
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 26.h, bottom: 10.h),
              child: SizedBox(
                height: 36.h,
                child: Center(
                  child: Text(
                    "My Code is",
                    style: GoogleFonts.poppins(
                        fontSize: 24.h,
                        fontWeight: FontWeight.w600,
                        color: textBlackColor),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(left: 33.w, right: 33.w),
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 28.h, bottom: 42.h),
                    child: SizedBox(
                        width: 360.w,
                        child: Center(
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text:
                                      "Enter the 4-digit that we have sent via the phone number ",
                                  style: GoogleFonts.inter(
                                    fontSize: 16.h,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff979C9E),
                                  ),
                                  children: [
                                    TextSpan(
                                        text: "+33 5-5555-5555",
                                        style: GoogleFonts.inter(
                                          fontSize: 16.h,
                                          fontWeight: FontWeight.w700,
                                          color: const Color(0xff979C9E),
                                        ))
                                  ])),
                        )),
                  ),
                  OTPTextField(
                    onCompleted: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    outlineBorderRadius: 50.sp,
                    fieldWidth: 50.sp,
                    length: 4,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                        borderColor: const Color(0xffE3E5E5),
                        focusBorderColor: const Color(0xffFCE76B)),
                    textFieldAlignment: MainAxisAlignment.center,
                    spaceBetween: 16.w,
                    style: GoogleFonts.poppins(
                        fontSize: 16.h,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff090A0A)),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 26.h, left: 24.w, right: 24.w),
                    child: SizedBox(
                      height: 48.h,
                      width: 312.w,
                      child: Center(
                        child: Text(
                          "Resend code",
                          style: GoogleFonts.poppins(
                              fontSize: 16.h,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff979C9E)),
                        ),
                      ),
                    ),
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

class CloseIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(5.18057, 1.02153);
    path_0.cubicTo(9.01694, 0.592758, 12.9829, 0.592758, 16.8193, 1.02153);
    path_0.cubicTo(18.9602, 1.26081, 20.6874, 2.94757, 20.9388, 5.09693);
    path_0.cubicTo(21.3975, 9.01896, 21.3975, 12.9811, 20.9388, 16.9031);
    path_0.cubicTo(20.6874, 19.0525, 18.9602, 20.7392, 16.8193, 20.9785);
    path_0.cubicTo(12.9829, 21.4073, 9.01694, 21.4073, 5.18056, 20.9785);
    path_0.cubicTo(3.03966, 20.7392, 1.31247, 19.0525, 1.06108, 16.9031);
    path_0.cubicTo(0.602362, 12.9811, 0.602362, 9.01896, 1.06108, 5.09693);
    path_0.cubicTo(1.31247, 2.94757, 3.03966, 1.26081, 5.18057, 1.02153);
    path_0.close();
    path_0.moveTo(6.58703, 6.5871);
    path_0.cubicTo(6.95314, 6.22099, 7.54673, 6.22099, 7.91285, 6.5871);
    path_0.lineTo(10.9999, 9.6742);
    path_0.lineTo(14.087, 6.58711);
    path_0.cubicTo(14.4532, 6.221, 15.0467, 6.221, 15.4129, 6.58711);
    path_0.cubicTo(15.779, 6.95323, 15.779, 7.54682, 15.4129, 7.91294);
    path_0.lineTo(12.3258, 11);
    path_0.lineTo(15.4129, 14.0871);
    path_0.cubicTo(15.779, 14.4532, 15.779, 15.0468, 15.4129, 15.4129);
    path_0.cubicTo(15.0467, 15.779, 14.4531, 15.779, 14.087, 15.4129);
    path_0.lineTo(10.9999, 12.3259);
    path_0.lineTo(7.91286, 15.4129);
    path_0.cubicTo(7.54674, 15.7791, 6.95315, 15.7791, 6.58704, 15.4129);
    path_0.cubicTo(6.22092, 15.0468, 6.22092, 14.4532, 6.58704, 14.0871);
    path_0.lineTo(9.67412, 11);
    path_0.lineTo(6.58703, 7.91293);
    path_0.cubicTo(6.22091, 7.54681, 6.22091, 6.95322, 6.58703, 6.5871);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffFADB28).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
