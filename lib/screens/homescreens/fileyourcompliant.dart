import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakout/screens/homescreens/myaddress.dart';

class FileYourComp extends StatefulWidget {
  const FileYourComp({super.key});

  @override
  State<FileYourComp> createState() => _FileYourCompState();
}

class _FileYourCompState extends State<FileYourComp> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffD9D9D9),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.check,
                    size: 30,
                    color: Color(0xff08334E),
                  )),
            )
          ],
        ),
        backgroundColor: Color(0xffD9D9D9),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Text('File Your Compliant',
                      style: TextStyle(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 700,
                  decoration: BoxDecoration(
                      color: Color(0xff08334E),
                      borderRadius: BorderRadius.circular(10)),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      MyAddressItem(
                          sideTitle: 'Name', textform: 'Enter Your Name'),
                      MyAddressItem(
                          sideTitle: 'Email', textform: 'Enter Your Email Id'),
                      MyAddressItem(
                          sideTitle: 'Mobile',
                          textform: 'Enter Your Mobile Number'),
                      MyAddressItem(
                          sideTitle: 'Site Of Crime',
                          textform: 'Enter Your Site of Crime'),
                      SizedBox(
                        height: 5.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'The Brief Description about the Crime',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 10.0),
                        child: Container(
                          child: TextFormField(
                            minLines: 3,
                            maxLines: 6,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Enter Your Description',
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: TextStyle(
                                color: Colors.black87, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
