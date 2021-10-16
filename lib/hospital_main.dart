import 'package:flutter/material.dart';
import 'package:medistock_new/demand_page/completed_demand_page.dart';
import 'package:medistock_new/demand_page/demand_in_transit_page.dart';
import 'package:medistock_new/demand_page/new_demand_page.dart';
import 'package:medistock_new/demand_page/qrcode_scanner.dart';
import 'package:medistock_new/demand_page/shopping_cart.dart';
import 'constants/constant.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'full_report_page.dart';
import 'package:medistock_new/demand_page/transfer.dart';
import 'demand_page/shopping_cart.dart';

class HospitalMainPage extends StatefulWidget {
  static const id = 'hospital_main_page';
  const HospitalMainPage({Key? key}) : super(key: key);

  @override
  _HospitalMainPageState createState() => _HospitalMainPageState();
}

class _HospitalMainPageState extends State<HospitalMainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    DemandPage(),
    HomePage(),
    StockPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Demand',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_rounded),
            label: 'Stock',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class DemandPage extends StatefulWidget {
  const DemandPage({Key? key}) : super(key: key);

  @override
  _DemandPageState createState() => _DemandPageState();
}

class _DemandPageState extends State<DemandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(40),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.blue, // Set border color
                                width: 2.0), // Set border width
                            borderRadius: BorderRadius.all(Radius.circular(
                                4.0)), // Set rounded corner radius
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: EdgeInsets.all(20),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, QrCodeScanner.id);
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Internal Transfer',
                                    style: kElevatedButtonTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(40),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.blue, // Set border color
                                width: 2.0), // Set border width
                            borderRadius: BorderRadius.all(Radius.circular(
                                4.0)), // Set rounded corner radius
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: EdgeInsets.all(20),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, TransferPage.id);
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Discard Stock',
                                    style: kElevatedButtonTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(40),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Colors.blue, // Set border color
                                width: 2.0), // Set border width
                            borderRadius: BorderRadius.all(Radius.circular(
                                4.0)), // Set rounded corner radius
                          ),
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            padding: EdgeInsets.all(20),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, OrderListPage.id);
                          },
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Order Stock',
                                    style: kElevatedButtonTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);
  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // This is handled by the search bar itself.
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildFloatingSearchBar(),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: ListView(
              children: [
                Center(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Stock List',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          thickness: 1,
                        ),
                        Text('Type: Paracetamol'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Batch: 200327'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('SKU: PC100ABC'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Quantity: 100'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('UoM: EA'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('S-ID: ABC1'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Location: P1A1R1C1'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('UoM: EA'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Expiry: Oct 2025'),
                      ],
                    )),
                Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          thickness: 1,
                        ),
                        Text('Type: Ibuprofen'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Batch: 100345'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('SKU: PC200EFG'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Quantity: 500'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('UoM: EA'),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('S-ID: ABC1'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Location: P1A1R1C1'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('UoM: EA'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Expiry: Feb 2026'),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFloatingSearchBar() {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      hint: 'Search...',
      scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
      transitionDuration: const Duration(milliseconds: 800),
      transitionCurve: Curves.easeInOut,
      physics: const BouncingScrollPhysics(),
      axisAlignment: isPortrait ? 0.0 : -1.0,
      openAxisAlignment: 0.0,
      width: isPortrait ? 600 : 500,
      debounceDelay: const Duration(milliseconds: 500),
      onQueryChanged: (query) {
        // Call your model, bloc, controller here.
      },
      // Specify a custom transition to be used for
      // animating between opened and closed stated.
      transition: CircularFloatingSearchBarTransition(),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
            icon: const Icon(Icons.archive),
            onPressed: () {},
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      builder: (context, transition) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Material(
            color: Colors.white,
            elevation: 4.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: Colors.accents.map((color) {
                return Container(height: 112, color: color);
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(
                child: Text(
                  'Notification',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey, // Set border color
                  width: 2.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(2.0)), // Set rounded corner radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.exchangeAlt,
                      size: 30,
                      color: Colors.yellow,
                    ),
                    Text(
                      "    Item Transfer - Ref: T01/20220101/0003",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey, // Set border color
                  width: 2.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(2.0)), // Set rounded corner radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.dumpster,
                      size: 30,
                      color: Colors.red,
                    ),
                    Text(
                      "     Item Discarded - Ref: D01/20220101/0001",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.grey, // Set border color
                  width: 2.0), // Set border width
              borderRadius: BorderRadius.all(
                  Radius.circular(2.0)), // Set rounded corner radius
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidCheckSquare,
                      size: 30,
                      color: Colors.green,
                    ),
                    Text(
                      "     Item Ordered - Ref: ABCH/20220101/0001",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Center(
                        child: Text(
                          'Data Report',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      'assets/datat1.jpg',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        padding: EdgeInsets.all(15),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, FullDataReportPage.id);
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('View Full Report',
                                style: kElevatedButtonTextStyle),
                            SizedBox(
                              width: 10,
                            ),
                            FaIcon(
                              FontAwesomeIcons.database,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
