import 'package:flutter/material.dart';
import 'package:medicine_rider/screens/cartScreen.dart';
import 'package:medicine_rider/screens/confirmOrder.dart';
import 'package:medicine_rider/screens/createAddress.dart';
import 'package:medicine_rider/screens/forgortPassword.dart';
import 'package:medicine_rider/screens/loginScreen.dart';
import 'package:medicine_rider/screens/medicineDescription.dart';
import 'package:medicine_rider/screens/signup.dart';
import 'package:medicine_rider/screens/successPage.dart';
import 'package:medicine_rider/screens/takeAddress.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}



class MyApp extends StatelessWidget
{
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(context)=>LoginScreen(),
        'signup':(context)=>Signup(),
        'forgotPassword':(context)=>ForgotPassword(),
        '/home':(context)=>Description(),
        'cart':(context)=>Cart(),
        'confirmAddress':(context)=>ConfirmAddress(),
        'takeAddress':(context)=>CreateAddress(),
        'confirmOrder':(context)=>OrderConfirm(),
        'successPage':(context)=>SuccessPage(),
      },
    );
  }
  // This widget is the root of your application.
}