import 'dart:ui';

import 'package:drive_to_go/Bloc/Sell/Sell%20Delete/delete_sell_bloc.dart';
import 'package:drive_to_go/Bloc/Sell/get%20all/get_all_by_bloc.dart';
import 'package:drive_to_go/Repository/ModelClass/DeleteSellModel.dart';
import 'package:drive_to_go/Repository/ModelClass/GetallbyModelclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  late List<GetallbyModelclass> data;
  late DeleteSellModel data1;

  @override
  void initState() {
    BlocProvider.of<GetAllByBloc>(context).add(FetchGetAllBy());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C3A4A),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Container(
                    width: 120.w,
                    height: 50.h,
                    decoration: ShapeDecoration(
                      color: Color(0xFF8A33FD),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r)),
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
                    child: BlocBuilder<GetAllByBloc, GetAllByState>(
                        builder: (context, state) {
                      if (state is GetAllByLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is GetAllByError) {
                        return Center(
                          child: Text("Error"),
                        );
                      }
                      if (state is GetAllByLoaded) {
                        data = BlocProvider.of<GetAllByBloc>(context)
                            .getallbyModelclass;

                        return GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 8.0,
                            crossAxisSpacing: 8.0,
                            childAspectRatio: 310 / 400,
                          ),
                          padding: EdgeInsets.all(8.0),
                          itemCount: data.length,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      width: 160.w,
                                      height: 146.h,
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            width: 177.w,
                                            height: 146.h,
                                            decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  topRight: Radius.circular(8),
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 5),
                                              child: Image.network(
                                                data[index]
                                                    .photos![0]
                                                    .toString(),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
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
                                                  child: BlocListener<
                                                      DeleteSellBloc,
                                                      DeleteSellState>(
                                                    listener: (context, state) {
                                                      if (state
                                                          is DeleteSellLoading) {
                                                        showDialog(
                                                            context: context,
                                                            builder: (ctx) =>    Center(
                                                              child:
                                                              CircularProgressIndicator(),
                                                            ));

                                                      }
                                                      if (state
                                                          is DeleteSellError) {
                                                        Navigator.of(context).pop();
                                                        showDialog(
                                                            context: context,
                                                            builder: (ctx) =>     Center(
                                                              child: Text("Error"),
                                                            ));

                                                      }
                                                      if (state
                                                          is DeleteSellLoaded) {
                                                        Navigator.of(context).pop();
                                                        BlocProvider.of<GetAllByBloc>(context).add(FetchGetAllBy());
                                                      }
                                                    },
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            BlocProvider.of<
                                                                        DeleteSellBloc>(
                                                                    context)
                                                                .add(
                                                                    FetchDeleteSell(id:data[index].id.toString()
                                                                    ));
                                                          },
                                                          child: Icon(
                                                            Icons.delete,
                                                            color: Colors.red,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          // sized box with width 10
                                                          width: 10,
                                                        ),
                                                        Text("Delete")
                                                      ],
                                                    ),
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
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      data[index].brand.toString(),
                                      style: GoogleFonts.merriweather(
                                        color: Color(0xFFF7F5F2),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.w),
                                        child: Icon(
                                          Icons.location_pin,
                                          size: 14.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        data[index].ownerPlace.toString(),
                                        style: GoogleFonts.inter(
                                          color: Color(0xFFF7F5F2),
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20.w,
                                      ),
                                      Text(
                                        data[index].rentPrice.toString(),
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.inter(
                                          color: Color(0xFFFFD66D),
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      } else {
                        return SizedBox();
                      }
                    })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
