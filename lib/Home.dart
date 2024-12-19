import 'package:drive_to_go/RentCAR/rent%20car.dart';
import 'package:drive_to_go/Sell%20Car/Sell%20Car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF20354E),
      body: Column(
        children: [
          SizedBox(
            height: 90.h,
          ),
          Center(
            child: Text(
              'Choose Category',
              style: GoogleFonts.lato(
                color: Color(0xFFF7F5F2),
                fontSize: 24.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.w, right: 33.w, top: 73),
            child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Sell()));},
              child: Container(
                  width: 364,
                  height: 94,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.84, -0.54),
                      end: Alignment(-0.84, 0.54),
                      colors: [Colors.white, Colors.white.withOpacity(0)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF58606A)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50.h,
                              width: 50.h,
                              child: Image.asset("assets/a.png")),
                        ),

                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Sell Your Car',
                        style: GoogleFonts.lato(
                          color: Color(0xFFF7F5F2),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 33.w, right: 33.w, top: 73),
            child: GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>Rent()));},
              child: Container(
                  width: 364,
                  height: 94,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.84, -0.54),
                      end: Alignment(-0.84, 0.54),
                      colors: [Colors.white, Colors.white.withOpacity(0)],
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF58606A)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                          child: Container(
                              height: 50.h,
                              width: 50.h,
                              child: Image.asset("assets/b.png")),
                        ),

                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        'Rent Your Car',
                        style: GoogleFonts.lato(
                          color: Color(0xFFF7F5F2),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
