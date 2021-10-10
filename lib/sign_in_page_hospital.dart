import 'package:flutter/material.dart';
import 'package:medistock_new/hospital_main.dart';
import 'constants/constant.dart';

class SignInPageHospital extends StatefulWidget {
  static const id = 'sign_in_page_hospital';
  @override
  _SignInPageHospitalState createState() => _SignInPageHospitalState();
}

class _SignInPageHospitalState extends State<SignInPageHospital> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
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
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Text(
                    'Hospital',
                    
                    style: kTopHiTextStyle,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'MediStock',
                          style: kLogoTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
                        child: SizedBox(
                          height: 40,
                          width: 20,
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 20, 40, 10),
                        child: TextField(
                          cursorColor: Colors.blue,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Color(0xFFA9A9A9)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 20),
                        child: TextField(
                          cursorColor: Colors.blue,
                          obscureText: true,
                          decoration: InputDecoration(
                            suffixStyle: TextStyle(color: Colors.blue),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              borderSide: BorderSide(color: Colors.blue),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Color(0xFFA9A9A9)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40, 30, 40, 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                              padding: EdgeInsets.all(18)),
                          onPressed: () {
                            Navigator.pushNamed(context, HospitalMainPage.id);
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
