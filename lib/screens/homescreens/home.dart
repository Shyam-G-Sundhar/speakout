import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakout/screens/homescreens/colorcode.dart';
import 'package:speakout/screens/homescreens/emergencycontacts.dart';
import 'package:speakout/screens/homescreens/emergencyhelpline.dart';
import 'package:speakout/screens/homescreens/fileyourcompliant.dart';
import 'package:speakout/screens/homescreens/myaddress.dart';
import 'package:speakout/screens/homescreens/nerabysaferoutes.dart';
import 'package:speakout/screens/homescreens/travellnginformation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffD9D9D9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text('Menu',
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    MenuItem(
                      title: 'My Emergency Contacts',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmergencyContacts(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'My Address',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyAddressScreen(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'Zone Detection',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ColorCodeScreen(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'Nearby safe routes',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NearbySafeRoutesScreen(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'File your complaint',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FileYourComp(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'Emergency helpline',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Emergencyhelpline(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'Know your Laws',
                      oncall: () {},
                    ),
                    MenuItem(
                      title: 'Help me during my travel',
                      oncall: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TravellingInformation(),
                          ),
                        );
                      },
                    ),
                    MenuItem(
                      title: 'SPEAK OUT-Chatbot',
                      oncall: () {},
                    ),
                    MenuItem(
                      title: 'HELP',
                      oncall: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatefulWidget {
  String title;
  VoidCallback oncall;
  MenuItem({
    super.key,
    required this.title,
    required this.oncall,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: widget.oncall,
        child: Container(
          height: 45.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xff08334E),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title,
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
