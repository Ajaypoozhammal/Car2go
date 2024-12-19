import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Adminedt extends StatefulWidget {
  const Adminedt({super.key});

  @override
  State<Adminedt> createState() => _AdminedtState();
}

class _AdminedtState extends State<Adminedt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(
  children: [

    SizedBox(height: 600.h,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            childAspectRatio:  400 / 400,
          ),
          padding: EdgeInsets.all(8.0),
          itemCount:18,
          itemBuilder: (context, index) {
            return Container(
              height:150.h,width: 100.w,
              child: Image.asset("assets/f.png"),


            );
          },
        ),
    ),
  ],
),
    );
  }
}
