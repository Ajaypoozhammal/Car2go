import 'package:drive_to_go/UI/Sell%20Car/Sell%20Car.dart';
import 'package:drive_to_go/UI/Sell%20Car/UploadImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SellPrice extends StatefulWidget {
  const SellPrice({super.key});

  @override
  State<SellPrice> createState() => _SellPriceState();
}

class _SellPriceState extends State<SellPrice> {
  List<TextEditingController> controllers = [TextEditingController()];

  void _addNewTextField() {
    setState(() {
      // Add a new TextEditingController to the list
      controllers.add(TextEditingController());
    });
  }

  @override
  void dispose() {
    // Dispose all TextEditingControllers to avoid memory leaks
    for (var controller in controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),

    );
  }
}
