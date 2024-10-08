import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TravellingInformation extends StatefulWidget {
  const TravellingInformation({super.key});

  @override
  State<TravellingInformation> createState() => _TravellingInformationState();
}

class _TravellingInformationState extends State<TravellingInformation> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffD9D9D9),
        ),
        backgroundColor: Color(0xffD9D9D9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text('Travelling Information',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xff08334E),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Full Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Name',
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Origin',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Location',
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Destination',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Location',
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text(
                              'Vehicle No',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter Your Vehicle No',
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xff08334E),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Color(0xff08334E),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
