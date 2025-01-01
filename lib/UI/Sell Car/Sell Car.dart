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
  final TextEditingController brand = TextEditingController();
  final TextEditingController rating = TextEditingController();
  final TextEditingController year = TextEditingController();
  final TextEditingController description = TextEditingController();
  final TextEditingController milege = TextEditingController();
  final TextEditingController rentprice = TextEditingController();
  final TextEditingController geartype = TextEditingController();
  final TextEditingController nuberofseat = TextEditingController();
  final TextEditingController nuberofdoors = TextEditingController();
  final TextEditingController ownername = TextEditingController();
  final TextEditingController ownerphonenumber = TextEditingController();
  final TextEditingController ownerplace = TextEditingController();
  final TextEditingController location = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  'Rating',
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Description',
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Mileage',
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'RentPrice',
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
                  'GearType',
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
                  'FuelType',
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
                  'Number of Seats',
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Number of Doors',
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'ownerName',
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
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'OwnerPhoneNumber',
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
                  'OwnerPlace',
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
                  'location',
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
        ),
      ),
    );
  }
}
