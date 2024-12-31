import 'package:drive_to_go/UI/Sell%20Car/Home.dart';
import 'package:drive_to_go/UI/Sell%20Car/Sell%20price.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Sell extends StatefulWidget {
  const Sell({super.key});

  @override
  State<Sell> createState() => _SellState();
}

class _SellState extends State<Sell> {
  final TextEditingController model = TextEditingController();
  final TextEditingController type = TextEditingController();
  final TextEditingController year = TextEditingController();

  String? selectedVehicle = "Car"; // Default selected option
  String selectedBrand = ''; // Ensure this is in the parent widget
  TextEditingController brandController = TextEditingController();
  final List<Map<String, dynamic>> vehicleOptions = [
    {
      'value': 'Car',
      'icon': Icons.directions_car,
    },
    {
      'value': 'Motorcycle',
      'icon': Icons.motorcycle,
    },
  ];
  final List<Map<String, dynamic>> brandOption = [
    {
      'value': 'BMW',
      'icon': Icons.directions_car,
    },
    {
      'value': 'Benz',
      'icon': Icons.car_crash_outlined,
    },
    {
      'value': 'audi',
      'icon': Icons.car_crash_outlined,
    },
  ];

  String? selectedmodel = "";
  final List<Map<String, dynamic>> modelOption = [
    {
      'value': '200sx',
    },
    {
      'value': '240sx',
    },
    {
      'value': '300zx',
    },
    {
      'value': '350z',
    },
  ];
  String? selectetype = "";
  final List<Map<String, dynamic>> typeOption = [
    {
      'value': 'Standard',
    },
  ];
  int selectedyear = 2000;

  bool isDropdownExpanded = false; // To handle the dropdown's expanded state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 70.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add your vehicle',
                              style: GoogleFonts.lato(
                                color: Color(0xFF333333),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Home(),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.close,
                                  size: 24.sp,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isDropdownExpanded = false;
                          });
                        },
                        child: Container(
                          width: 360.w,
                          padding: EdgeInsets.symmetric(
                              vertical: 8.w, horizontal: 15.h),
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  width: 1.w, color: Color(0xFFB5B1B1)),
                              borderRadius: BorderRadius.circular(3.r),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isDropdownExpanded = !isDropdownExpanded;
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      selectedVehicle ?? "Select Vehicle Type",
                                      style: GoogleFonts.lato(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    const Icon(Icons.keyboard_arrow_down,
                                        size: 30),
                                  ],
                                ),
                              ),
                              if (isDropdownExpanded)
                                Column(
                                  children: vehicleOptions.map((option) {
                                    return RadioListTile<String>(
                                      value: option['value'],
                                      groupValue: selectedVehicle,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedVehicle = value;
                                          isDropdownExpanded =
                                          false; // Close dropdown on selection
                                        });
                                      },
                                      title: Text(
                                        option['value'],
                                        style: GoogleFonts.lato(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      secondary: Icon(
                                        option['icon'],
                                        color: Colors.black,
                                        size: 30.sp,
                                      ),
                                      activeColor: Colors.black,
                                    );
                                  }).toList(),
                                ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        'Choose from popular brands or add your own',
                        style: GoogleFonts.lato(
                          color: Color(0xFFB5B1B1),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 388.w,
                        height: 78.h,
                        child: ListView.separated(
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, position) {
                            return SizedBox(
                              width: 78.w,
                              child: Container(
                                width: 78.w,
                                height: 78.h,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFC8CFD7),
                                  shape: OvalBorder(),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/c.png",
                                    width: 40.w,
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, position) {
                            return SizedBox(
                              width: 15.w,
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Text(
                        'Choose your brand',
                        style: GoogleFonts.inter(
                          color: Color(0xFF000B17),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 34.h,
                      ),
                      Text(
                        'Brand',
                        style: GoogleFonts.inter(
                          color: Color(0xFF000B17),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                  TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          )),

                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Model',
                        style: GoogleFonts.inter(
                          color: Color(0xFF000B17),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 9.h,
                      ),
                      TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Type',
                        style: GoogleFonts.inter(
                          color: Color(0xFF000B17),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'Year',
                        style: GoogleFonts.inter(
                          color: Color(0xFF000B17),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r)),
                          )),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SellPrice()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 37.h),
                          child: Container(
                            width: 340.w,
                            height: 56.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFF000B17),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Center(
                              child: Text(
                                'NEXT',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
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
      ),
    );
  }
}