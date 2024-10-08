import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:speakout/screens/auth/otp.dart';
import 'package:speakout/screens/homescreens/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffD9D9D9),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('Welcome to Speak Out',
                        style: TextStyle(
                          fontSize: 30.sp,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Center(
                  child: Container(
                    height: 125.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/loginlogo.png'))),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text('Email',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      label: Text('Email'),
                      prefixIcon: Icon(Icons.email),
                      focusColor: Colors.white,
                      hintText: 'Enter Your Email Id',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      Text('Password',
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
                      filled: true,
                      fillColor: Colors.white,
                      label: Text('Password'),
                      prefixIcon: Icon(Icons.lock),
                      focusColor: Colors.white,
                      hintText: 'Enter Your Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff08334E),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomeScreen()));
                    },
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text('Sign in',
                            style: TextStyle(
                              fontSize: 22.sp,
                            ))),
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              decoration: TextDecoration.underline),
                        )),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      '''Does'nt have an account? Create one!''',
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.black,
                          letterSpacing: 1.2,
                          decoration: TextDecoration.underline),
                    )),
              ],
            ),
          )),
    );
  }
}
