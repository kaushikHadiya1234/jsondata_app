
import 'package:flutter/material.dart';
import 'package:jsondata_app/Screen/Provider/cart_provider.dart';
import 'package:jsondata_app/Screen/Provider/post_provider.dart';
import 'package:jsondata_app/Screen/View/Dash_Screen.dart';
import 'package:jsondata_app/Screen/View/User_Screen.dart';
import 'package:jsondata_app/Screen/View/data_screen.dart';
import 'package:jsondata_app/Screen/View/home_screen.dart';
import 'package:jsondata_app/Screen/View/view_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PostProvider(),),
        ChangeNotifierProvider(create: (context) => CartProvider(),),
      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => DashScreen(),
            'post':(context) => PostScreen(),
            'data':(context) => DataScreen(),
            'user':(context) => UserScreen(),
            'view':(context) => ViewScreen(),
          },
      ),
    ),
  );
}
