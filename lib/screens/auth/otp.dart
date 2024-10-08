import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpScrren extends StatefulWidget {
  const OtpScrren({super.key});

  @override
  State<OtpScrren> createState() => _OtpScrrenState();
}

class _OtpScrrenState extends State<OtpScrren> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffD9D9D9),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('OTP Validation',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Enter the OTP sent to your email',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('OTP',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter OTP',
                  hintStyle: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff08334E),
                  minimumSize: Size(double.infinity, 50.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
