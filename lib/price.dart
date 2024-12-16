import 'package:drive_to_go/rent%20car.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 21.h),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
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
                  Column(mainAxisAlignment: MainAxisAlignment.start,
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
                padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 38.h),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enable price range',
                      style: GoogleFonts.inter(
                        color: Color(0xFF000B17),
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),SizedBox(width:30.w,),
                    CupertinoSwitch(
                      value: _switchValue,
                      onChanged: (value) {
                        setState(() {
                          _switchValue = value;
                        },
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h,),
              Padding(
                padding:  EdgeInsets.only(right: 200.w),
                child: Text(
                  'Set your price',
                  style: GoogleFonts.inter(
                    color: Color(0xFF000B17),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
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
