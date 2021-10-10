import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'new_demand_page.dart';

class NewDemandListPage extends StatefulWidget {
  static const id = 'new_demand_list_page';

  @override
  _NewDemandListPageState createState() => _NewDemandListPageState();
}

class _NewDemandListPageState extends State<NewDemandListPage> {
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
                Navigator.pushNamed(context, NewDemandPage.id);
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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: FlatButton(
                onPressed: () {},
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
                        "ABCH/20220101/0002",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
