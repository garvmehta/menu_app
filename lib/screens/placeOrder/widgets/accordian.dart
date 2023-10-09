import 'package:flutter/material.dart';
import 'package:menu_app/models/category_model.dart';
import 'package:menu_app/screens/placeOrder/widgets/product_card.dart';

// ignore: must_be_immutable
class Accordian extends StatefulWidget {
  String name;
  List<Product> Products;
  Accordian({super.key, required this.Products, required this.name});

  @override
  State<Accordian> createState() => _AccordianState();
}

class _AccordianState extends State<Accordian> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Color.fromRGBO(201, 199, 199, 1)))),
      child: Column(
        children: [
          ListTile(
            onTap: () => {setState(() => isOpen = !isOpen)},
            contentPadding: EdgeInsets.symmetric(horizontal: 6),
            title: Text(
              widget.name,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            trailing: FittedBox(
              child: Row(
                children: [
                  Text(widget.Products.length.toString(),
                      style: const TextStyle(
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
                  children: widget.Products.map((Product e) {
                    return ProductCard(
                      isBestSeller: e.inStock,
                      name: e.name,
                      price: e.price,
                    );
                  }).toList(),
                )
              : SizedBox()
        ],
      ),
    );
  }
}

class ProductCart {}
