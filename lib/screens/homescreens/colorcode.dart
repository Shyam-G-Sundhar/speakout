import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:math';

class ColorCodeScreen extends StatefulWidget {
  const ColorCodeScreen({super.key});

  @override
  State<ColorCodeScreen> createState() => _ColorCodeScreenState();
}

class _ColorCodeScreenState extends State<ColorCodeScreen> {
  @override
  GoogleMapController? mapController;

  // Set the initial camera position (Centered at London)
  final CameraPosition _initialPosition = CameraPosition(
    target: LatLng(51.5, -0.09),
    zoom: 13.0,
  );

  // Create a list to store markers
  Set<Marker> _markers = {};

  // Method to add a marker with a random color
  void _addRandomMarker(LatLng position) {
    final random = Random();
    // Generate a random index for selecting color
    int randomColorIndex = random.nextInt(3); // Generates 0, 1, or 2
    BitmapDescriptor markerIcon;

    // Select a marker color based on random index
    if (randomColorIndex == 0) {
      markerIcon =
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed);
    } else if (randomColorIndex == 1) {
      markerIcon =
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueYellow);
    } else {
      markerIcon =
          BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen);
    }

    // Add the marker
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId(position.toString()), // Unique ID for the marker
          position: position,
          icon: markerIcon, // Random color marker icon
          infoWindow: InfoWindow(
            title: 'Marker',
            snippet: 'Marker',
          ),
        ),
      );
    });
  }

  // Initialize the map and add the first random marker
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;

    // Add an initial marker at the center
    _addRandomMarker(_initialPosition.target);
  }

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
                child: Text('Colour Code',
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
                  height: 210,
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
                              'Update the Location',
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
                            hintText: 'Enter Your Address',
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          style:
                              TextStyle(color: Colors.black87, fontSize: 16.sp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 30.0,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 30.0,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 30.0,
                        )
                      ],
                    ),
                    Container(
                      height: 350,
                      width: 250,
                      color: Colors.grey, // Background color for the container
                      child: Column(
                        children: [
                          Container(
                            height: 350,
                            width: 250,
                            color: Colors
                                .grey, // Background color for the container
                            child: Column(
                              children: [
                                Expanded(
                                  child: GoogleMap(
                                    onMapCreated: _onMapCreated,
                                    initialCameraPosition: _initialPosition,
                                    mapType: MapType.normal,
                                    markers: _markers, // Set of markers
                                    onTap: (LatLng position) {
                                      _addRandomMarker(position);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
