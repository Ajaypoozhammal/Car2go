import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Rent extends StatefulWidget {
  const Rent({super.key});

  @override
  State<Rent> createState() => _RentState();
}

class _RentState extends State<Rent> {
  String? selectedVehicle = "Car"; // Default selected option

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

  bool isDropdownExpanded = false; // To handle the dropdown's expanded state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Select Vehicle Type'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Close dropdown if tapped elsewhere
            setState(() {
              isDropdownExpanded = false;
            });
          },
          child: Container(
            width: 350,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        selectedVehicle ?? "Select Vehicle Type",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                        ),
                      ),
                      const Icon(Icons.keyboard_arrow_down, size: 30),
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
                            isDropdownExpanded = false; // Close dropdown on selection
                          });
                        },
                        title: Text(
                          option['value'],
                          style: GoogleFonts.lato(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                          ),
                        ),
                        secondary: Icon(
                          option['icon'],
                          color: Colors.black,
                          size: 30,
                        ),
                        activeColor: Colors.black,
                      );
                    }).toList(),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

