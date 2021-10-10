import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medistock_new/constants/constant.dart';
import 'package:medistock_new/demand_page/qrcode_scanner.dart';
import 'package:flutter_signature_pad/flutter_signature_pad.dart';

class DemandInTransitDetailPage extends StatefulWidget {
  static const id = 'demand_in_transit_detail_page';

  @override
  _DemandInTransitDetailState createState() => _DemandInTransitDetailState();
}

class _DemandInTransitDetailState extends State<DemandInTransitDetailPage> {
  
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
                      'Storage Location Id: ',
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
                    Text('10 Caplet'),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Signature',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Signature(
                    color: Colors.black, // Color of the drawing path
                    strokeWidth: 5.0, // with
                    backgroundPainter:
                        null, // Additional custom painter to draw stuff like watermark
                    onSign: null, // Callback called on user pan drawing
                    key:
                        null, // key that allow you to provide a GlobalKey that'll let you retrieve the image once user has signed
                  ),
                ),
              ),
            ],
          ),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, QrCodeScanner.id);
            },
            icon: Icon(FontAwesomeIcons.shuttleVan),
            label: Text(
              '  Delivery Confirmation',
              style: kSmallerTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
