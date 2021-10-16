import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medistock_new/constants/constant.dart';
import 'package:medistock_new/demand_page/qrcode_scanner.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

class CompletedDemandDetailPage extends StatefulWidget {
  static const id = 'demand_completed_detail_page';

  @override
  _CompletedDemandDetailState createState() => _CompletedDemandDetailState();
}

class _CompletedDemandDetailState extends State<CompletedDemandDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ABCH/20220101/0001'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
            child: Text(
              'Order Details',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Agency Name:',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Date and Time of Indent: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'From S-ID: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'To S-ID: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Item Description: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'SKU: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Batch Number: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Quantity: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'UOM: ',
                      style: kSmallerTextStyle,
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Expiry: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Required By: ',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Remarks:',
                      style: kSmallerTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alpha Beta Charlie Hospital',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('01/01/2022'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('WH01'),
                     SizedBox(
                      height: 10,
                    ),
                    Text('ABC1'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Paracetamol'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('PC100ABC'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('200327'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('100'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Ea'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Oct/2025'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('03/01/2022'),
                    SizedBox(
                      height: 10,
                    ),
                    Text('NIL'),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
