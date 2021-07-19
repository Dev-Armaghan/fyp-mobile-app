import 'package:flutter/material.dart';
import 'package:medicine_rider/widgets/Button.dart';
import 'package:medicine_rider/widgets/boldText.dart';
import 'package:medicine_rider/widgets/specialFeature.dart';
import 'package:medicine_rider/widgets/text15.dart';
import 'package:medicine_rider/widgets/textField.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [SafeArea(
          child: Padding(
            padding: EdgeInsets.only(right: 25, left: 25),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                        image:
                        AssetImage('assets/images/forgotpassword_logo.png')),
                    SizedBox(
                      height: 25,
                    ),
                    BoldText(text: 'Forgot your password?'),
                    SizedBox(
                      height: 25,
                    ),
                    Text15(
                      text: 'Enter the registered email below to receive OTP',
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Image.asset('assets/images/message_logo.png'),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text15(
                      text: 'Email',
                    ),
                    textfield(
                      hintText: 'Please enter your registered email',
                      image: AssetImage('assets/images/email_logo.png'),
                      textFieldValue: (value){
                        setState(() {
                          email=value;
                        });
                      },
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Remember password?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    ),
                    SpecialFeatures(text: 'LOGIN',navigator: (){
                      Navigator.pop(context);
                    },),
                    SizedBox(height: 25,),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: FlatButton(
                    onPressed: () async {
                      try{
                        Navigator.pop(context);
                      }catch (e){
                        print(e);
                      }

                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    padding:
                    EdgeInsets.only(top: 15, bottom: 15, left: 65, right: 65),
                    child: Text(
                      'Send',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    color: Color(0xff176BE8),
                  ),
                )
              ],
            ),
          ),
        ),],
      ),
    );
  }
}
