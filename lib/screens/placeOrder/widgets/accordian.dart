import 'package:flutter/material.dart';
import 'package:menu_app/screens/placeOrder/widgets/product_card.dart';

class Accordian extends StatefulWidget {
  const Accordian({super.key});

  @override
  State<Accordian> createState() => _AccordianState();
}

class _AccordianState extends State<Accordian> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            onTap: () => {setState(() => isOpen = !isOpen)},
            contentPadding: EdgeInsets.symmetric(horizontal: 6),
            title: Text(
              'Category',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            trailing: FittedBox(
              child: Row(
                children: [
                  Text("3",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 17)),
                  Icon(
                    (!isOpen) ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          (isOpen)
              ? Column(
                  children: [ProductCard()],
                )
              : SizedBox()
        ],
      ),
    );
  }
}

class ProductCart {}
