import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAddressScreen extends StatefulWidget {
  const MyAddressScreen({super.key});

  @override
  State<MyAddressScreen> createState() => _MyAddressScreenState();
}

class _MyAddressScreenState extends State<MyAddressScreen> {
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
                child: Text('My Address',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xff08334E),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      MyAddressItem(
                        sideTitle: 'House No, Street',
                        textform: 'Enter Your Address',
                      ),
                      MyAddressItem(
                        sideTitle: 'City',
                        textform: 'Enter Your City',
                      ),
                      MyAddressItem(
                        sideTitle: 'District',
                        textform: 'Enter Your District',
                      ),
                      MyAddressItem(
                        sideTitle: 'State',
                        textform: 'Enter Your State',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Color(0xff08334E),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Submit',
                                  style: TextStyle(
                                      color: Color(0xff08334E),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyAddressItem extends StatefulWidget {
  String sideTitle, textform;
  MyAddressItem({super.key, required this.sideTitle, required this.textform});

  @override
  State<MyAddressItem> createState() => _MyAddressItemState();
}

class _MyAddressItemState extends State<MyAddressItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                '${widget.sideTitle}',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
          child: Container(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                hintText: '${widget.textform}',
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              style: TextStyle(color: Colors.black87, fontSize: 16.sp),
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
