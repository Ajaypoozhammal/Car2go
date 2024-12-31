import 'package:drive_to_go/Bloc/Rent/Rent%20Delete/rent_delete_bloc.dart';
import 'package:drive_to_go/Bloc/Rent/Rent%20all/rent_all_bloc.dart';
import 'package:drive_to_go/Bloc/Sell/Sell%20Delete/delete_sell_bloc.dart';
import 'package:drive_to_go/Bloc/Sell/get%20all/get_all_by_bloc.dart';
import 'package:drive_to_go/UI/RentCAR/RentAdmin.dart';
import 'package:drive_to_go/UI/Sell%20Car/Home.dart';
import 'package:drive_to_go/UI/Sell%20Car/Sell%20Admin.dart';
import 'package:drive_to_go/UI/Sell%20Car/Sell%20Car.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(396, 950),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => GetAllByBloc(),
              ),
              BlocProvider(
                create: (context) => DeleteSellBloc(),
              ),
              BlocProvider(
                create: (context) => RentAllBloc(),
              ),
              BlocProvider(
                create: (context) => RentDeleteBloc(),
              )
            ],
            child: MaterialApp(debugShowCheckedModeBanner: false,
                title: 'Flutter Demo',
                theme: ThemeData(
                  // This is the theme of your application.
                  //
                  // TRY THIS: Try running your application with "flutter run". You'll see
                  // the application has a purple toolbar. Then, without quitting the app,
                  // try changing the seedColor in the colorScheme below to Colors.green
                  // and then invoke "hot reload" (save your changes or press the "hot
                  // reload" button in a Flutter-supported IDE, or press "r" if you used
                  // the command line to start the app).
                  //
                  // Notice that the counter didn't reset back to zero; the application
                  // state is not lost during the reload. To reset the state, use hot
                  // restart instead.
                  //
                  // This works for code too, not just values: Most code changes can be
                  // tested with just a hot reload.
                  colorScheme: ColorScheme.fromSeed(
                      seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                home: Sell()
            ),
          );
        }
    );
  }
}
