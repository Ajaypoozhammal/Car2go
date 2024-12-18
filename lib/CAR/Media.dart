import 'dart:io';

import 'package:drive_to_go/CAR/AdminEdit.dart';
import 'package:drive_to_go/CAR/price.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Media extends StatefulWidget {
  const Media({super.key});

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  File? image;
  final picker = ImagePicker();

  Future getImageGallery() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }

  Future getImageCamera() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 80);
    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
        print("hello" + pickedFile.path);
      } else {
        print("No image Picked");
      }
    });
  }

  String? selecteColor = ""; // Default selected option
  final List<Map<String, dynamic>> vehiclecolor = [
    {
      'value': 'Black',
      'color': Colors.black,
    },
    {
      'value': 'White',
      'color': Colors.white,
    },
    {
      'value': 'Red',
      'color': Colors.red,
    },
  ];
  String? selectGear = ""; // Default selected option
  final List<Map<String, dynamic>> GearType = [
    {
      'value': 'Automatic',
    },
    {
      'value': 'manual',
    },
    {
      'value': '4*4',
    },
  ];


  String? selectFuel = ""; // Default selected option
  final List<Map<String, dynamic>> FuelType = [
    {
      'value': 'Petrol',
    },
    {
      'value': 'Diesel',
    },
  ];
  bool isDropdownExpanded = false;
  bool isDropdownExpande = false;
  bool isDropdownExpand = false;
  // To handle the dropdown's expanded state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 23.w, top: 35.h),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => Price(),
                          ),
                        );
                      },
                      child: Container(
                        width: 24.w,
                        height: 24.w,
                        child: Icon(
                          Icons.arrow_back_rounded,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 23.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Upload Media',
                          style: GoogleFonts.inter(
                            color: Color(0xFF333333),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '15,000 AED , 10KM',
                          style: GoogleFonts.inter(
                            color: Color(0xFF000B17),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 400.h,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 135.w, right: 168.w, top: 100.h),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        getImageCamera();
                                      },
                                      child: Container(
                                        width: 126.w,
                                        height: 126.h,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1.w,
                                                color: Color(0xFFB5B1B1)),
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.camera,
                                          color: Colors.black,
                                          size: 55.sp,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Camera',
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF333333),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30.w,
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        getImageGallery();
                                      },
                                      child: Container(
                                        width: 126.w,
                                        height: 126.h,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                width: 1.w,
                                                color: Color(0xFFB5B1B1)),
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.image,
                                          color: Colors.black,
                                          size: 55.sp,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Gallery',
                                      style: GoogleFonts.inter(
                                        color: Color(0xFF333333),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  width: 126.w,
                  height: 126.h,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFB5B1B1)),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                  child: Icon(
                    Icons.photo_camera,
                    color: Color(0xFF929191),
                    size: 55.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              Center(
                child: Text(
                  'Upload Photos',
                  style: GoogleFonts.inter(
                    color: Color(0xFF000B17),
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 280.w, left: 25),
                child: Text(
                  'Description',
                  style: GoogleFonts.inter(
                    color: Color(0xFF000B17),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: 345.w,
                height: 100.h,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.r)),
                    prefixIcon: Center(
                      child: Padding(
                        padding: EdgeInsets.only(right: 200.w, bottom: 30.h),
                        child: Text(
                          'Write a description',
                          style: GoogleFonts.inter(
                            color: Color(0xFFB5B1B1),
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 250.w, ),
                child: Text(
                  'Vehicle color',
                  style: GoogleFonts.inter(
                    color: Color(0xFF000B17),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isDropdownExpanded = false;
                    },
                  );
                },
                child: Container(
                  width: 350.w,
                  padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 15.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFB5B1B1)),
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              isDropdownExpanded = !isDropdownExpanded;
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selecteColor ?? "Select Vehicle color",
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down, size: 30),
                          ],
                        ),
                      ),
                      if (isDropdownExpanded)
                        Column(
                          children: vehiclecolor.map((option) {
                            return RadioListTile<String>(
                              value: option['value'],
                              groupValue: selecteColor,
                              onChanged: (value) {
                                setState(
                                  () {
                                    selecteColor = value;
                                    isDropdownExpanded =
                                        false; // Close dropdown on selection
                                  },
                                );
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
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 270.w, ),
                child: Text(
                  'Gear type',
                  style: GoogleFonts.inter(
                    color: Color(0xFF000B17),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      isDropdownExpande = false;
                    },
                  );
                },
                child: Container(
                  width: 350.w,
                  padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 15.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFB5B1B1)),
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              isDropdownExpande = !isDropdownExpande;
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectGear ?? "Select Gear type",
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down, size: 30),
                          ],
                        ),
                      ),
                      if (isDropdownExpande)
                        Column(
                          children: GearType.map(
                            (option) {
                              return RadioListTile<String>(
                                value: option['value'],
                                groupValue: selectGear,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectGear = value;
                                      isDropdownExpande =
                                          false; // Close dropdown on selection
                                    },
                                  );
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
                            },
                          ).toList(),
                        ),
                    ],
                  ),
                ),
              ),
          
              SizedBox(
                height: 26.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 220),
                child: Text(
                  'Fuel type',
                  style: GoogleFonts.inter(
                    color: Color(0xFF000B17),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              GestureDetector(
                onTap: () {
                  setState(
                        () {
                          isDropdownExpand = false;
                    },
                  );
                },
                child: Container(
                  width: 350.w,
                  padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 15.h),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.w, color: Color(0xFFB5B1B1)),
                      borderRadius: BorderRadius.circular(3.r),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                                () {
                                  isDropdownExpand = !isDropdownExpand;
                            },
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectFuel ?? "Select Fuel type",
                              style: GoogleFonts.lato(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87,
                              ),
                            ),
                            const Icon(Icons.keyboard_arrow_down, size: 30),
                          ],
                        ),
                      ),
                      if (isDropdownExpand)
                        Column(
                          children: FuelType.map(
                                (option) {
                              return RadioListTile<String>(
                                value: option['value'],
                                groupValue: selectFuel,
                                onChanged: (value) {
                                  setState(
                                        () {
                                          selectFuel = value;
                                          isDropdownExpand =
                                      false; // Close dropdown on selection
                                    },
                                  );
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
                            },
                          ).toList(),
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15.h,),
              Padding(
                padding: EdgeInsets.only(bottom: 39.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => Adminedt(),
                      ),
                    );
                  },
                  child: Container(
                    width: 382.w,
                    height: 56,
                    decoration: ShapeDecoration(
                      color: Color(0xFF000B17),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Text(
                        'SUBMIT',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
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
