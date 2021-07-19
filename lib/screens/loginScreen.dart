import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicine_rider/screens/forgortPassword.dart';
import 'package:medicine_rider/screens/homeScreen.dart';
import 'package:medicine_rider/screens/signup.dart';
import 'package:medicine_rider/widgets/Button.dart';
import 'package:medicine_rider/widgets/specialFeature.dart';
import 'package:medicine_rider/widgets/text15.dart';
import 'package:medicine_rider/widgets/textField.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:medicine_rider/widgets/boldText.dart';

import '../api.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  String email;
  String password;
  bool process = false;
  String validate;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: process,
      child: Scaffold(
        body: ListView(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CircleAvatar(
                          child: Image(
                            image: AssetImage('assets/images/login_logo.png'),
                          ),
                          radius: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        BoldText(
                          text: 'Login',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BoldText(
                          text: 'Welcome',
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text15(
                          text: 'Email',
                        ),
                        textfield(
                          hintText: 'someone@somewhere.com',
                          image: AssetImage('assets/images/user_logo.png'),
                          textFieldValue: (value) => email = value,
                          errorMsg: validate,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text15(
                          text: 'Password',
                        ),
                        textfield(
                          hintText: '*****',
                          image: AssetImage('assets/images/password_logo.png'),
                          textFieldValue: (value) => password = value,
                          errorMsg: validate,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: _isChecked,
                            onChanged: (value) {
                              setState(() {
                                _isChecked = value;
                              });
                            }),
                        Text15(
                          text: 'remember me',
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40),
                          child: SpecialFeatures(
                            text: 'forgot password',
                            navigator: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ForgotPassword();
                              }));
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: [
                        FlatButton(
                          //  onPressed: () async {
                          // try{
                          //   var response = await Api().login(email, password);
                          //   if(response['status'] ==false){
                          //     Fluttertoast.showToast(
                          //       msg: "Invalid orIos: 1
                          //     );
                          //   }
                          //   else{
                          //     Navigator.push(Password",
                          //                           //       toastLength: Toast.LENGTH_SHORT,
                          //                           //       gravity: ToastGravity.CENTER,
                          //                           //       // timeInSecFcontext, MaterialPageRoute(builder: (context){
                          //       return HomeScreen();
                          //     }));
                          //   }
                          // }catch(e)
                          //    {
                          //      print(e);
                          //    }
                          //
                          //  },
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeScreen();
                                },
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, left: 65, right: 65),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Color(0xff176BE8),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text15(
                          text: "Don't have an account",
                        ),
                        Button(
                          text: 'SignUp',
                          navigator: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Signup();
                            }));
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
