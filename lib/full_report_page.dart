import 'package:flutter/material.dart';
import 'package:medistock_new/supply_main.dart';
import 'constants/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FullDataReportPage extends StatefulWidget {
  static const id = 'full_data_report_page';

  @override
  _FullDataReportPageState createState() => _FullDataReportPageState();
}

class _FullDataReportPageState extends State<FullDataReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: ListView(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Text(
                      "Full Report 2021 Jan",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ),
              Container(child: Image(image: AssetImage('assets/datat1.jpg'))),
              Container(child: Image(image: AssetImage('assets/data2.jpg'))),
               Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: EdgeInsets.all(15),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, SupplyMainPage.id);
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Close Report', style: kElevatedButtonTextStyle),
                                SizedBox(width: 10,),
                                FaIcon(FontAwesomeIcons.times,),
                              ],
                            ),
                          ),
                        ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
