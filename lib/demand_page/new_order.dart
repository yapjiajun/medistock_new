import 'package:flutter/material.dart';
import 'package:medistock_new/constants/constant.dart';
import 'qrcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewOrderPage extends StatefulWidget {
  const NewOrderPage({Key? key}) : super(key: key);
  static const id = 'new_order_page';
  @override
  _NewOrderPageState createState() => _NewOrderPageState();
}

class _NewOrderPageState extends State<NewOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('New Order Demand'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Container(
                    child: Center(
                      child: Text(
                        'New Order List',
                        style: kUnderLineTextStyle,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Text('Reference Number'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'E.g. XXXH/YYYMMDD/0001'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('Description'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Parcetamol'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('Quantity'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'E.g. 10'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('Agency Name'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'E.g. Alpha Beta Charlie Hospital'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('From S-ID'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'E.g. WH01'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('To S-ID'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'E.g. ABC1'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15),
                ),
                onPressed: () {
                  final snackBar = SnackBar(
                    backgroundColor: Colors.red,
                    content: const Text(
                        'There are still stock in the first batch of drugs'),
                    action: SnackBarAction(
                      textColor: Colors.white,
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text('Process Demand'),
              ),
            ],
          ),
        ));
  }
}
