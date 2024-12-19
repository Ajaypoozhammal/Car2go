
import 'package:drive_to_go/RentCAR/Media.dart';
import 'package:drive_to_go/RentCAR/rent%20car.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Price extends StatefulWidget {
  const Price({super.key});

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  bool _switchValue = true;
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 21.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => Rent(),
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
                      width: 18.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Toyota 4Runner 2024',
                          style: GoogleFonts.inter(
                            color: Color(0xFF333333),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 60.w),
                          child: Text(
                            'Malappuram , Kerala',
                            style: GoogleFonts.inter(
                              color: Color(0xFF000B17),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.w, vertical: 38.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Enable price range',
                        style: GoogleFonts.inter(
                          color: Color(0xFF000B17),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      CupertinoSwitch(
                        value: _switchValue,
                        onChanged: (value) {
                          setState(
                            () {
                              _switchValue = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 200.w),
                  child: Text(
                    'Set your price',
                    style: GoogleFonts.inter(
                      color: Color(0xFF000B17),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Container(
                    width: 351,
                    height: 107,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFB5B1B1)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 120.w, top: 13.h),
                            child: Row(
                              children: [
                                Container(
                                  width: 20.w,
                                  height: 20.h,
                                  child: Image.asset(
                                    "assets/d.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Text(
                                  '5,000   AED',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF000B17),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Slider(
                            overlayColor:
                                WidgetStatePropertyAll(Color(0x3F000000)),
                            value: _currentSliderValue,
                            max: 100,
                            divisions: 5,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(
                                () {
                                  _currentSliderValue = value;
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Row(
                              children: [
                                Text(
                                  '1 AED',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF929191),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 200.w,
                                ),
                                Text(
                                  '999,000 AED',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF929191),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 240.w),
                  child: Text(
                    'Mileage',
                    style: GoogleFonts.inter(
                      color: Color(0xFF000B17),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Container(
                    width: 351,
                    height: 107,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFB5B1B1)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 120.w, top: 13.h),
                            child: Row(
                              children: [
                                Container(
                                  width: 20.w,
                                  height: 20.h,
                                  child: Image.asset(
                                    "assets/d.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Text(
                                  '10KM',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF000B17),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Slider(
                            overlayColor:
                                WidgetStatePropertyAll(Color(0x3F000000)),
                            value: _currentSliderValue,
                            max: 100,
                            divisions: 5,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(
                                () {
                                  _currentSliderValue = value;
                                },
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Row(
                              children: [
                                Text(
                                  '1 AED',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF929191),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  width: 200.w,
                                ),
                                Text(
                                  '999,000 AED',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFF929191),
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.h,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 39.h),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => Media(),
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
                          'NEXT',
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
      ),
    );
  }
}
