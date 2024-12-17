import 'package:drive_to_go/price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Media extends StatefulWidget {
  const Media({super.key});
  @override
  State<Media> createState() => _MediaState();
}
class _MediaState extends State<Media> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 20,top: 5),
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
            Container(
              width: 126.w,
              height: 126.h,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.w, color: Color(0xFFB5B1B1)),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Icon(Icons.photo_camera),
            ),
            Text(
              'Upload Photos',
              style: GoogleFonts.inter(
                color: Color(0xFF000B17),
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            )

          ],
        ),
      ),
    );
  }
}
