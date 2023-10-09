import 'package:flutter/material.dart';
import 'package:menu_app/screens/placeOrder/widgets/accordian.dart';
import 'package:menu_app/screens/placeOrder/widgets/place_order_btn.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu App",
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(18),
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 201, 201, 201), width: 1),
            borderRadius: BorderRadius.circular(4)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(children: const [
                Accordian(),
              ]),
            ),
            const PlaceOrderBtn()
          ],
        ),
      ),
    );
  }
}
