import 'package:flutter/material.dart';
import 'package:medistock_new/constants/constant.dart';
import 'qrcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferPage extends StatefulWidget {
  const TransferPage({Key? key}) : super(key: key);
  static const id = 'transfer_stock_page';
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Transfer Stock'),
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
                        'Order List',
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
              Container(
                child: Text('Description'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'E.g. DD/MM/YYYY'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('Required By'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'E.g. DD/MM/YYYY'),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text('Required By'),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'E.g. DD/MM/YYYY'),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Navigator.pushNamed(context, QrCodeScanner.id);
                },
                icon: Icon(FontAwesomeIcons.qrcode),
                label: Text(
                  'Process Demand',
                  style: kSmallerTextStyle,
                ),
              )
            ],
          ),
        ));
  }
}
