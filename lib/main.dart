import 'package:flutter/material.dart';
import 'package:medistock_new/demand_page/completed_demand_page.dart';
import 'package:medistock_new/demand_page/demand_in_transit_details_page.dart';
import 'package:medistock_new/demand_page/demand_in_transit_page.dart';
import 'package:medistock_new/demand_page/new_demand_page.dart';
import 'package:medistock_new/demand_page/qrcode_scanner.dart';
import 'package:medistock_new/demand_page/shopping_cart.dart';
import 'package:medistock_new/demand_page/transfer.dart';
import 'package:medistock_new/full_report_page.dart';
import 'package:medistock_new/hospital_main.dart';
import 'package:medistock_new/sign_in_page_supply.dart';
import 'package:medistock_new/supply_main.dart';
import 'welcome_page.dart';
import 'sign_in_page_main.dart';
import 'sign_in_page_hospital.dart';
import 'sign_in_page_supply.dart';
import 'demand_page/new_demand_list_page.dart';
import 'package:medistock_new/demand_page/completed_demand_page_details.dart';
import 'full_report_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        SignInPageMain.id: (context) => SignInPageMain(),
        SignInPageSupply.id: (context) => SignInPageSupply(),
        SignInPageHospital.id: (context) => SignInPageHospital(),
        HospitalMainPage.id: (context) => HospitalMainPage(),
        SupplyMainPage.id: (context) => SupplyMainPage(),
        NewDemandPage.id: (context) => NewDemandPage(),
        DemandInTransitPage.id: (context) => DemandInTransitPage(),
        CompletedDemandPage.id: (context) => CompletedDemandPage(),
        NewDemandListPage.id: (context) => NewDemandListPage(),
        QrCodeScanner.id: (context) => QrCodeScanner(),
        DemandInTransitDetailPage.id: (context) => DemandInTransitDetailPage(),
        CompletedDemandDetailPage.id: (context) => CompletedDemandDetailPage(),
        FullDataReportPage.id:(context) => FullDataReportPage(),
        TransferPage.id:(context)=>TransferPage(),
        OrderListPage.id:(context)=>OrderListPage(),
      },
    );
  }
}
