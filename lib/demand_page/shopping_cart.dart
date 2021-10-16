import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class OrderListPage extends StatefulWidget {
  const OrderListPage({Key? key}) : super(key: key);
  static const id = 'order_list_page';
  @override
  _OrderListPageState createState() => _OrderListPageState();
}

class _OrderListPageState extends State<OrderListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order List')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'E.g. Paracetamol'),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(8),
                    child: FittedBox(
                      child: Image.asset('assets/aspirin.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: FittedBox(
                      child: Image.asset('assets/losagen.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: FittedBox(
                      child: Image.asset('assets/amoxilin.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: FittedBox(
                      child: Image.asset('assets/tylenol.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: FittedBox(
                      child: Image.asset('assets/ibufen.png'),
                      fit: BoxFit.fill,
                    )),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: FittedBox(
                      child: Image.asset('assets/pana.png'),
                      fit: BoxFit.fill,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
