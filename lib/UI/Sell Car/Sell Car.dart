import 'package:drive_to_go/Bloc/Sell/CreateBuy/create_buy_bloc.dart';
import 'package:drive_to_go/UI/Sell%20Car/GoogleMap.dart';
import 'package:drive_to_go/UI/Sell%20Car/Sell%20Admin.dart';
import 'package:drive_to_go/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


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
  final TextEditingController fueltype = TextEditingController();
  final TextEditingController vehicleColor = TextEditingController();
  final TextEditingController image = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final List<String> photos = [];
  late String locations = '';

  void _addImages() {
    final images = image.text.trim();
    if (images.isNotEmpty && !photos.contains(images)) {
      setState(() {
        photos.add(images);
        image.clear();
      });
    } else if (images.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please add an images!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Images already added!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
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
                    TextFormField(
                      controller: brand,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  brand!';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
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
                    TextFormField(
                      controller: model,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  Model!';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
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
                    TextFormField(
                      controller: rating,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  rating';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
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
                      height: 5.h,
                    ),
                    TextFormField(
                      controller: year,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  year';
                        }
                        return null;
                      },
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
                    TextFormField(
                      controller: description,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter discription';
                        }
                        return null;
                      },
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
                    TextFormField(
                      controller: milege,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  milege!';
                        }
                        return null;
                      },
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
                    TextFormField(
                      controller: rentprice,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  rentprice';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
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
                    TextFormField(
                      controller: geartype,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a geaetype';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
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
                    TextFormField(
                      controller: fueltype,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  FuelType';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
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
                    TextFormField(
                      controller: nuberofseat,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a number of seat';
                        }
                        return null;
                      },
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
                    TextFormField(
                      controller: nuberofdoors,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  Number of Doors';
                        }
                        return null;
                      },
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
                    TextFormField(
                      controller: ownername,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  owner name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'vehicleColor',
                      style: GoogleFonts.inter(
                        color: Color(0xFF000B17),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      controller: vehicleColor,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a vehicleColor';
                        }
                        return null;
                      },
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
                    TextFormField(
                      controller: ownerphonenumber,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  Phone Number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
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
                    TextFormField(
                      controller: ownerplace,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  Owner Place';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                      ),
                    ),
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
                    TextFormField(
                      controller: location,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter a  Phone Number';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        hintText: 'Type your location or search in map',
                        hintStyle: TextStyle(
                          color: Color(0xFF627487),
                          fontSize: 16.sp,
                          fontFamily: 'sfprodisplay',
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (_) => Googlemap(
                                  controller: location,
                                  googleMapController: GoogleMapController,
                                ),
                              ),
                            );
                          },
                          child: Icon(
                            Icons.map_outlined,
                            color: Color(0xFF627487),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Images',
                      style: GoogleFonts.inter(
                        color: Color(0xFF000B17),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),

                    TextFormField(
                      controller: image,

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r)),
                        hintText: 'upload images',
                        hintStyle: TextStyle(
                          color: Color(0xFF627487),
                          fontSize: 16.sp,
                          fontFamily: 'sfprodisplay',
                          fontWeight: FontWeight.w500,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _addImages();
                          },
                          child: Icon(
                            Icons.add,
                            color: Color(0xFF627487),
                          ),
                        ),
                        prefix: Icon(
                          Icons.image,
                          color: Color(0xFF627487),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                    ...List.generate(
                      photos.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Card(
                            child: ListTile(
                              title: Text(photos[index]),
                              trailing: IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  setState(() {
                                    photos.removeAt(index);
                                  });
                                },
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.only(bottom: 37.h),
                      child: BlocListener<CreateBuyBloc, CreateBuyState>(
                        listener: (context, state) {
                          if (state is CreateBuyBlocLoading) {
                            showDialog(
                                context: context,
                                builder: (ctx) => Center(
                                      child: CircularProgressIndicator(),
                                    ));
                            print("loading");
                          }
                          if (State is CreateBuyBlocLoaded) {
                            Navigator.of(context).pop();
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (_) => Admin()),
                                (route) => false);
                          }
                          if (state is CreateBuyBlocError) {
                            Navigator.of(context).pop();

                            print("error");
                          }
                        },
                        child: GestureDetector(
                          onTap: () {
                            final isValid = formkey.currentState!.validate();
                            if (isValid||photos.isNotEmpty) {
                              BlocProvider.of<CreateBuyBloc>(context)
                                  .add(FetchCreateBuy(
                                brand: brand.text,
                                model: model.text,
                                rating: double.parse(rating.text),
                                year: int.parse(year.text),
                                description: description.text,
                                mileage: int.parse(milege.text),
                                rentprice: int.parse(rentprice.text),
                                geartype: geartype.text,
                                fueltype: fueltype.text,
                                noOfSeats: int.parse(nuberofseat.text),
                                numberofdoors: int.parse(nuberofdoors.text),
                                ownername: ownername.text,
                                ownerphoneNumber: ownerphonenumber.text,
                                ownerplace: ownerplace.text,
                                location: location.text,
                                photo: photos,
                                latitude: lat,
                                longitude: long,
                                vehicleColor: '',
                              ));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Admin()));
                            }
                            formkey.currentState?.save();
                          },
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
