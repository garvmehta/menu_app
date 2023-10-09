import 'package:flutter/material.dart';
import 'package:menu_app/provider/order_provider.dart';
import 'package:provider/provider.dart';

class PlaceOrderBtn extends StatelessWidget {
  const PlaceOrderBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 160, 0, 1),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            const Expanded(
              flex: 1,
              child: Text('Place Order',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            ),
            Expanded(
              flex: 1,
              child: Text("\$ ${Provider.of<Order>(context).totalAmount}",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
