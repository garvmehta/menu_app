import 'package:flutter/material.dart';
import 'package:menu_app/screens/placeOrder/widgets/cart_btn.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

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
                      "product name",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding:
                            EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                            color: Colors.red[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Best Seller",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ))
                  ],
                ),
                Text(
                  "\$ 5",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
            CartBtn()
          ],
        ));
  }
}
