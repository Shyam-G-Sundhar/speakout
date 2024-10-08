import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Emergencyhelpline extends StatefulWidget {
  const Emergencyhelpline({super.key});

  @override
  State<Emergencyhelpline> createState() => _EmergencyhelplineState();
}

class _EmergencyhelplineState extends State<Emergencyhelpline> {
  // Function to dial the number
  void _dialNumber(String number) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: number,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    // Initialize ScreenUtil for responsive design
    ScreenUtil.init(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffD9D9D9), // Background color
        appBar: AppBar(
          backgroundColor: const Color(0xffD9D9D9), // AppBar color
          title: Text(
            'Emergency Helpline',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              Table(
                border: TableBorder.all(color: Colors.black), // Table border
                columnWidths: {
                  0: FlexColumnWidth(3), // Column for helpline names
                  1: FlexColumnWidth(2), // Column for numbers
                },
                children: [
                  TableRow(
                    decoration: BoxDecoration(
                      color: const Color(0xff08334E), // Header background color
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.h),
                        child: Text(
                          'Emergency Helpline',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Header text color
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.h),
                        child: Text(
                          'Number',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Header text color
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Add table rows for each helpline
                  _buildTableRow('Police', '100'),
                  _buildTableRow('Ambulance', '102'),
                  _buildTableRow('Fire', '101'),
                  _buildTableRow('National Emergency Number', '112'),
                  _buildTableRow('Child Helpline', '1098'),
                  _buildTableRow('Women Helpline (Domestic Abuse)', '181'),
                  _buildTableRow(
                      'National Commission for Women (NCW)', '7827170170'),
                  _buildTableRow('Senior Citizens Helpline', '14567'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build each table row
  TableRow _buildTableRow(String serviceName, String number) {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.all(8.h),
          child: Text(
            serviceName,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _dialNumber(number), // Click to dial number
          child: Padding(
            padding: EdgeInsets.all(8.h),
            child: Text(
              number,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.blue, // Clickable text color
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
