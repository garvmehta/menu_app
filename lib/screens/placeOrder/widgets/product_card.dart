import 'package:flutter/material.dart';
import 'package:menu_app/screens/placeOrder/widgets/cart_btn.dart';

// ignore: must_be_immutable
class ProductCard extends StatefulWidget {
  String name;
  int price;
  bool isBestSeller;
  ProductCard(
      {super.key,
      required this.isBestSeller,
      required this.name,
      required this.price});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(6),
        color: Color.fromARGB(255, 243, 243, 243),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    (widget.isBestSeller)
                        ? Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                                color: Colors.red[400],
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "Best Seller",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ))
                        : const SizedBox()
                  ],
                ),
                Text(
                  "\$ ${widget.price}",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
            CartBtn(
              price: widget.price,
              name: widget.name,
              isBestSeller: widget.isBestSeller,
            )
          ],
        ));
  }
}
