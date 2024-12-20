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
                      Container(
                        width: 350.w,
                        height: 60.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.w, color: Color(0xFF000B17)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  selectedBrand ?? "Select Vehicle Brand",
                                  style: GoogleFonts.lato(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  ),
                                ),
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
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                            setState) {
                                          return SizedBox(
                                            height: 640.h,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 41.w),
                                              child: Column(
                                                children: [
                                                  SizedBox(height: 44.h),
                                                  Text(
                                                    'Brands',
                                                    style: GoogleFonts.inter(
                                                      color: Color(0xFF000B17),
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                      FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(height: 26.h),
                                                  TextField(
                                                    controller: brandController,
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.h),
                                                      border:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                      ),
                                                      enabledBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFF000B17)),
                                                      ),
                                                      focusedBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                        borderSide: BorderSide(
                                                            color: Color(
                                                                0xFF000B17)),
                                                      ),
                                                      errorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                      ),
                                                      prefixIcon:
                                                      Icon(Icons.search),
                                                      hintText:
                                                      'Search brand here',
                                                      hintStyle:
                                                      GoogleFonts.inter(
                                                        color:
                                                        Color(0xFF000B17),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListView.builder(
                                                      itemCount:
                                                      brandOption.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                          int index) {
                                                        final option =
                                                        brandOption[index];
                                                        return RadioListTile<
                                                            String>(
                                                          value:
                                                          option['value'],
                                                          groupValue:
                                                          selectedBrand,
                                                          // Sync the groupValue with the updated selectedBrand
                                                          onChanged: (value) {
                                                            setState(() {
                                                              selectedBrand =
                                                                  value ?? '';
                                                              brandController
                                                                  .text =
                                                                  selectedBrand;
                                                            });
                                                            Navigator.of(
                                                                context)
                                                                .pop(); // Close the modal after selection
                                                          },
                                                          title: Text(
                                                            option['value'],
                                                            style: GoogleFonts
                                                                .lato(
                                                              fontSize: 18,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w400,
                                                              color: Colors
                                                                  .black87,
                                                            ),
                                                          ),
                                                          secondary: Icon(
                                                            option['icon'],
                                                            color: Colors.black,
                                                            size: 30,
                                                          ),
                                                          activeColor:
                                                          Colors.black,
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Icon(Icons.keyboard_arrow_down_outlined),
                              )
                            ],
                          ),
                        ),
                      ),
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
                      Container(
                        width: 350.w,
                        height: 60.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.w, color: Color(0xFF000B17)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  selectedmodel ?? "Select Vehicle Model",
                                  style: GoogleFonts.lato(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isDropdownExpanded = !isDropdownExpanded;
                                  });

                                  showModalBottomSheet(
                                    context: context,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                            setState) {
                                          return SizedBox(
                                            height: 640.h,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 41.w),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 44.h,
                                                  ),
                                                  Text(
                                                    'Model',
                                                    style: GoogleFonts.inter(
                                                      color: Color(0xFF000B17),
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                      FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 26.h,
                                                  ),
                                                  TextField(
                                                    controller: model,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        decorationThickness:
                                                        0.sp),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.h),
                                                      border:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                      ),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              5.r),
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFF000B17))),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              5.r),
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xFF000B17))),
                                                      errorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                      ),
                                                      prefixIcon:
                                                      Icon(Icons.search),
                                                      hintText: 'Search here',
                                                      hintStyle:
                                                      GoogleFonts.inter(
                                                        textStyle: TextStyle(
                                                          color:
                                                          Color(0xFF000B17),
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                          FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (BuildContext
                                                        context,
                                                            int index) {
                                                          return Column(
                                                            children:
                                                            modelOption.map(
                                                                    (option) {
                                                                  return RadioListTile<
                                                                      String>(
                                                                    value: option[
                                                                    'value'],
                                                                    groupValue:
                                                                    selectedmodel,
                                                                    onChanged:
                                                                        (value) {
                                                                      setState(() {
                                                                        selectedmodel =
                                                                            value;
                                                                        brandController
                                                                            .text !=
                                                                            value;

                                                                        // Close dropdown on selection
                                                                      });
                                                                    },
                                                                    title: Text(
                                                                      option[
                                                                      'value'],
                                                                      style:
                                                                      GoogleFonts
                                                                          .lato(
                                                                        fontSize:
                                                                        18,
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                        color: Colors
                                                                            .black87,
                                                                      ),
                                                                    ),
                                                                    secondary: Icon(
                                                                      option[
                                                                      'icon'],
                                                                      color: Colors
                                                                          .black,
                                                                      size: 30,
                                                                    ),
                                                                    activeColor:
                                                                    Colors
                                                                        .black,
                                                                  );
                                                                }).toList(),
                                                          );
                                                        }),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 29.h,
                                                        left: 47.w,
                                                        right: 36.w),
                                                    child: Container(
                                                      width: 347.w,
                                                      height: 54.h,
                                                      decoration:
                                                      ShapeDecoration(
                                                        shape:
                                                        RoundedRectangleBorder(
                                                          side: BorderSide(
                                                              width: 1,
                                                              color: Color(
                                                                  0xFFB5B1B1)),
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(5),
                                                        ),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Others',
                                                          style:
                                                          GoogleFonts.inter(
                                                            color: Color(
                                                                0xFFB5B1B1),
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                            FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 27.h,
                                                        bottom: 55.h,
                                                        left: 47.w,
                                                        right: 36.w),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Container(
                                                        width: 340.w,
                                                        height: 56.h,
                                                        decoration:
                                                        ShapeDecoration(
                                                          color:
                                                          Color(0xFF000B17),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  8)),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Select',
                                                            style: GoogleFonts
                                                                .inter(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 20.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Icon(Icons.keyboard_arrow_down_outlined),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                        height: 25.h,
                      ),
                      Container(
                        width: 350.w,
                        height: 60.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.w, color: Color(0xFF000B17)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  selectetype ?? "Select Vehicle type",
                                  style: GoogleFonts.lato(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isDropdownExpanded = !isDropdownExpanded;
                                  });

                                  showModalBottomSheet(
                                    context: context,
                                    elevation: 10,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(
                                        builder: (BuildContext context,
                                            void Function(void Function())
                                            setState) {
                                          return SizedBox(
                                            height: 640.h,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 41.w),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  SizedBox(
                                                    height: 44.h,
                                                  ),
                                                  Text(
                                                    'Type',
                                                    style: GoogleFonts.inter(
                                                      color: Color(0xFF000B17),
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                      FontWeight.w500,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 26.h,
                                                  ),
                                                  TextField(
                                                    controller: type,
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        decorationThickness:
                                                        0.sp),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                      EdgeInsets.symmetric(
                                                          vertical: 10.h),
                                                      border:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                      ),
                                                      enabledBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0xFF000B17),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                      OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                        borderSide: BorderSide(
                                                          color:
                                                          Color(0xFF000B17),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                      OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.red),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5.r),
                                                      ),
                                                      prefixIcon:
                                                      Icon(Icons.search),
                                                      hintText: 'Search here',
                                                      hintStyle:
                                                      GoogleFonts.inter(
                                                        textStyle: TextStyle(
                                                          color:
                                                          Color(0xFF000B17),
                                                          fontSize: 14.sp,
                                                          fontFamily: 'Inter',
                                                          fontWeight:
                                                          FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 25.h,
                                                  ),
                                                  Expanded(
                                                    child: ListView.builder(
                                                        itemCount: 1,
                                                        itemBuilder:
                                                            (BuildContext
                                                        context,
                                                            int index) {
                                                          return Column(
                                                            children: typeOption
                                                                .map((option) {
                                                              return RadioListTile<
                                                                  String>(
                                                                value: option[
                                                                'value'],
                                                                groupValue:
                                                                selectetype,
                                                                onChanged:
                                                                    (value) {
                                                                  setState(
                                                                        () {
                                                                      selectetype =
                                                                          value;
                                                                      type.text !=
                                                                          value;

                                                                      // Close dropdown on selection
                                                                    },
                                                                  );
                                                                },
                                                                title: Text(
                                                                  option[
                                                                  'value'],
                                                                  style:
                                                                  GoogleFonts
                                                                      .lato(
                                                                    fontSize:
                                                                    18,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                    color: Colors
                                                                        .black87,
                                                                  ),
                                                                ),
                                                                secondary: Icon(
                                                                  option[
                                                                  'icon'],
                                                                  color: Colors
                                                                      .black,
                                                                  size: 30,
                                                                ),
                                                                activeColor:
                                                                Colors
                                                                    .black,
                                                              );
                                                            }).toList(),
                                                          );
                                                        }),
                                                  ),
                                                  SizedBox(
                                                    height: 68.h,
                                                  ),
                                                  Container(
                                                    width: 347.w,
                                                    height: 54.h,
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        side: BorderSide(
                                                            width: 1,
                                                            color: Color(
                                                                0xFFB5B1B1)),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5),
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Others',
                                                        style:
                                                        GoogleFonts.inter(
                                                          color:
                                                          Color(0xFFB5B1B1),
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                          FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    EdgeInsets.symmetric(
                                                        vertical: 54.h),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Container(
                                                        width: 347.w,
                                                        height: 50.h,
                                                        decoration:
                                                        ShapeDecoration(
                                                          color:
                                                          Color(0xFF001B39),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  5)),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Select',
                                                            style: GoogleFonts
                                                                .inter(
                                                              color:
                                                              Colors.white,
                                                              fontSize: 20.sp,
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                },
                                child: Icon(Icons.keyboard_arrow_down_outlined),
                              ),
                            ],
                          ),
                        ),
                      ),
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
                        height: 9.h,
                      ),
                      Container(
                        width: 350.w,
                        height: 60.h,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1.w, color: Color(0xFF000B17)),
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    showModalBottomSheet(
                                        context: context,
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(10.0),
                                        ),
                                        builder: (BuildContext context) {
                                          return StatefulBuilder(
                                            builder: (BuildContext context,
                                                void Function(void Function())
                                                setState) {
                                              return SizedBox(
                                                height: 640.h,
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 41.w),
                                                  child: Column(
                                                    // mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      SizedBox(
                                                        height: 44.h,
                                                      ),
                                                      Text(
                                                        'Model Year',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          color: Colors.brown,
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: CupertinoPicker(
                                                          itemExtent: 32,
                                                          scrollController:
                                                          FixedExtentScrollController(
                                                            initialItem:
                                                            3, // Adjust this to match the default year
                                                          ),
                                                          children: List<
                                                              Widget>.generate(
                                                              25, (int index) {
                                                            return Center(
                                                              child: Text(
                                                                (2000 + index)
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                    20),
                                                              ),
                                                            );
                                                          }),
                                                          onSelectedItemChanged:
                                                              (int value) {
                                                            setState(() {
                                                              selectedyear =
                                                                  2000 + value;
                                                            });
                                                          },
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 26.h,
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                            vertical: 54.h),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            Navigator.of(
                                                                context)
                                                                .pop();
                                                          },
                                                          child: Container(
                                                            width: 347.w,
                                                            height: 50.h,
                                                            decoration:
                                                            ShapeDecoration(
                                                              color: Color(
                                                                  0xFF001B39),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      5)),
                                                            ),
                                                            child: Center(
                                                              child: Text(
                                                                'Select',
                                                                style:
                                                                GoogleFonts
                                                                    .inter(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                  20.sp,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                        EdgeInsets.only(
                                                            left: 10.w),
                                                        child: Text(
                                                          selectedyear
                                                              .toString(),
                                                          style:
                                                          GoogleFonts.lato(
                                                            fontSize: 18.sp,
                                                            fontWeight:
                                                            FontWeight.w400,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        });
                                  },
                                  child:
                                  Icon(Icons.keyboard_arrow_down_outlined)),
                            ],
                          ),
                        ),
                      ),
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