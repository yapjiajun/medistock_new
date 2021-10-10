import 'package:flutter/material.dart';
import 'package:medistock_new/demand_page/completed_demand_page_details.dart';

class CompletedDemandPage extends StatefulWidget {
    static const id = 'completed_demand_page';
  @override
  _CompletedDemandPageState createState() => _CompletedDemandPageState();
}

class _CompletedDemandPageState extends State<CompletedDemandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('New Demand (Ref No.)'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: Column(
          children: [
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, CompletedDemandDetailPage.id);
              },
              child: Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.blue, // Set border color
                      width: 2.0), // Set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(4.0)), // Set rounded corner radius
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ABCH/20220101/0001",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
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