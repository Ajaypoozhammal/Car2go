import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3A4A),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 170),
                  child: Container(
                    width: 120.w,
                    height: 50.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8A33FD),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Center(
                      child: Text(
                        'Add',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.castoro(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 800.h,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 8.0,
                      childAspectRatio: 310 / 400,
                    ),
                    padding: EdgeInsets.all(8.0),
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 185.w,
                        height: 223.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF58606A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Container(
                                width: 160.w,
                                height: 146.h,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                      "assets/f.png",
                                      fit: BoxFit.fill,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 100),
                                      child: PopupMenuButton<int>(
                                        iconColor: Colors.white,
                                        itemBuilder: (context) => [
                                          // popupmenu item 1
                                          PopupMenuItem(
                                            value: 1,
                                            // row has two child icon and text.
                                            child: Row(
                                              children: [
                                                Icon(Icons.edit),
                                                SizedBox(
                                                  // sized box with width 10
                                                  width: 10,
                                                ),
                                                Text("Edit")
                                              ],
                                            ),
                                          ),
                                          // popupmenu item 2
                                          PopupMenuItem(
                                            value: 2,
                                            // row has two child icon and text
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.delete,
                                                  color: Colors.red,
                                                ),
                                                SizedBox(
                                                  // sized box with width 10
                                                  width: 10,
                                                ),
                                                Text("Delete")
                                              ],
                                            ),
                                          ),
                                        ],
                                        offset: Offset(0, 100),
                                        color: Colors.white,
                                        elevation: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right:25.w),
                              child: Text(
                                'Ferrari 296 GTB',
                                style: GoogleFonts.merriweather(
                                  color: Color(0xFFF7F5F2),
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 8.w),
                                  child: Icon(
                                    Icons.location_pin,
                                    size: 14.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Kottakal',
                                  style: GoogleFonts.inter(
                                    color: Color(0xFFF7F5F2),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),SizedBox(width: 20.w,),
                                Text(
                                  '\$ 8000 / day',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    color: Color(0xFFFFD66D),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )

                              ],
                            )
                          ],
                        ),
                      );
                    },
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
