import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbySafeRoutesScreen extends StatefulWidget {
  const NearbySafeRoutesScreen({super.key});

  @override
  State<NearbySafeRoutesScreen> createState() => _NearbySafeRoutesScreenState();
}

class _NearbySafeRoutesScreenState extends State<NearbySafeRoutesScreen> {
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
                child: Text('Safe Routes',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              SizedBox(
                height: 20.h,
              ),
              Column(
                children: [
                  NearbySafeRouteItem(
                    icon: Icons.arrow_circle_left_outlined,
                    num: '150m',
                  ),
                  NearbySafeRouteItem(
                    icon: Icons.arrow_circle_right_outlined,
                    num: '198m',
                  ),
                  NearbySafeRouteItem(
                    icon: Icons.arrow_circle_up_outlined,
                    num: '200m',
                  ),
                  NearbySafeRouteItem(
                    icon: Icons.arrow_circle_down_outlined,
                    num: '160m',
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width / 1.1,
                color: Colors.white,
                child: Center(
                  child: Text("Map Loading ...."),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xff08334E),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Change',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
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

class NearbySafeRouteItem extends StatefulWidget {
  IconData icon;
  String num;
  NearbySafeRouteItem({
    required this.icon,
    required this.num,
    super.key,
  });

  @override
  State<NearbySafeRouteItem> createState() => _NearbySafeRouteItemState();
}

class _NearbySafeRouteItemState extends State<NearbySafeRouteItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 45,
          ),
          SizedBox(
            width: 25.w,
          ),
          Container(
            alignment: Alignment.center,
            width: 250,
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xff08334E),
                borderRadius: BorderRadius.circular(25)),
            child: Text('${widget.num}',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600)),
          )
        ],
      ),
    );
  }
}
