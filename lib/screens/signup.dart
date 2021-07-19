import 'package:flutter/material.dart';
import 'package:medicine_rider/widgets/Button.dart';
import 'package:medicine_rider/widgets/boldText.dart';
import 'package:medicine_rider/widgets/specialFeature.dart';
import 'package:medicine_rider/widgets/text15.dart';
import 'package:medicine_rider/widgets/textField.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../api.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String validate;
  textfield text = textfield();
  String email;
  String password;
  String password1;
  String username;
  bool process = false;
  var user;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: process,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: ListView(
            children: [
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        CircleAvatar(
                          child: Image(
                            image:
                                AssetImage('assets/images/register_logo.png'),
                          ),
                          radius: 30,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        BoldText(text: 'Register'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldText(text: 'Lets create your account'),
                      SizedBox(
                        height: 25,
                      ),
                      Text15(
                        text: 'Username',
                      ),
                      textfield(
                          hintText: 'Enter your name',
                          image: AssetImage('assets/images/user_logo.png'),
                          textFieldValue: (value) {
                            username = value;
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Text15(
                        text: 'Email',
                      ),
                      textfield(
                        hintText: 'someone@somewhere.com',
                        image: AssetImage('assets/images/email_logo.png'),
                        textFieldValue: (value) {
                          email = value;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text15(
                        text: 'Password',
                      ),
                      textfield(
                        hintText: 'Enter password',
                        image: AssetImage('assets/images/password_logo.png'),
                        textFieldValue: (value) {
                          password = value;
                        },
                        errorMsg: validate,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text15(
                        text: 'Password',
                      ),
                      textfield(
                        hintText: 'confirm password',
                        image: AssetImage('assets/images/password_logo.png'),
                        textFieldValue: (value) {
                          password1 = value;
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        alignment: Alignment.center,
                        child: FlatButton(
                          onPressed: () async {
                            try {
                              print('in signup try box');
                              var response = await Api()
                                  .register(username, email, password);
                              if (response['message'] ==
                                  'The email has already been taken.') {
                                Fluttertoast.showToast(
                                  msg: "The email already exist",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                  // timeInSecForIos: 1
                                );
                              } else {
                                Fluttertoast.showToast(
                                  msg: response,
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.CENTER,
                                );
                              }
                            } catch (e) {
                              print('in signup catch box');
                              print(e);
                            }

                            // setState(() {
                            //   process=true;
                            // });
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.only(
                              top: 15, bottom: 15, left: 65, right: 65),
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          color: Color(0xff176BE8),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
