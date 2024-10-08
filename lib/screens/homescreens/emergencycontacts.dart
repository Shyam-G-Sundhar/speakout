import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergencyContacts extends StatefulWidget {
  const EmergencyContacts({super.key});

  @override
  State<EmergencyContacts> createState() => _EmergencyContactsState();
}

class _EmergencyContactsState extends State<EmergencyContacts> {
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
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('My Emergency Contacts',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(
                      width: 8.w,
                    ),
                    Icon(
                      Icons.contact_emergency_outlined,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    EmergencyContactItem(
                      num: '1234567890',
                      btn: 'change',
                    ),
                    EmergencyContactItem(
                      num: '4567890123',
                      btn: 'change',
                    ),
                    EmergencyContactItem(
                      num: '6789012345',
                      btn: 'change',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add Contacts',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.add_circle_outline,
                    size: 30,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          hintText: 'Enter Your Contact Number',
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        style:
                            TextStyle(color: Colors.black87, fontSize: 16.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 40.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(0xff08334E),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Text(
                            'SUBMIT',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmergencyContactItem extends StatefulWidget {
  String num, btn;
  EmergencyContactItem({
    required this.num,
    required this.btn,
    super.key,
  });

  @override
  State<EmergencyContactItem> createState() => _EmergencyContactItemState();
}

class _EmergencyContactItemState extends State<EmergencyContactItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40.h,
            width: 200.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '${widget.num}',
                style: TextStyle(color: Colors.black87, fontSize: 16.sp),
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xff08334E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Text(
                  '${widget.btn}',
                  style: TextStyle(color: Colors.white, fontSize: 16.sp),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
