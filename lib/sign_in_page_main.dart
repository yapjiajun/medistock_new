import 'constants/constant.dart';
import 'sign_in_page_hospital.dart';
import 'sign_in_page_supply.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignInPageMain extends StatefulWidget {
  static const id = 'sign_in_page';
  @override
  _SignInPageMainState createState() => _SignInPageMainState();
}

class _SignInPageMainState extends State<SignInPageMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF8F0E3),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xFFFF6000),
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF6000),
                          padding: EdgeInsets.all(30),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignInPageSupply.id);
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Warehouse', style: kElevatedButtonTextStyle),
                              SizedBox(width: 10,),
                              FaIcon(FontAwesomeIcons.warehouse),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFF6000),
                          padding: EdgeInsets.all(30),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, SignInPageHospital.id);
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Hospital', style: kElevatedButtonTextStyle),
                              SizedBox(width: 10,),
                              FaIcon(FontAwesomeIcons.hospitalAlt,),
                            ],
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
    );
  }
}
