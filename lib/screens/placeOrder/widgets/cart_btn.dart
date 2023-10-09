import 'package:flutter/material.dart';
import 'package:menu_app/provider/order_provider.dart';
import 'package:provider/provider.dart';

class CartBtn extends StatefulWidget {
  String name;
  int price;
  bool isBestSeller;
  CartBtn(
      {super.key,
      required this.isBestSeller,
      required this.name,
      required this.price});

  @override
  State<CartBtn> createState() => _CartBtnState();
}

class _CartBtnState extends State<CartBtn> {
  bool isAdded = false;
  int quantity = 0;
  updateQuantity(bool inc) {
    int qnty = (inc) ? quantity + 1 : quantity - 1;
    print(qnty);
    if (qnty > 0) {
      setState(() {
        quantity = qnty;
      });
    } else {
      setState(() {
        quantity = 0;
        isAdded = false;
      });
    }

    Provider.of<Order>(context, listen: false).addProductToCart(
        Cart(widget.name, widget.isBestSeller, widget.price, quantity));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.26,
        height: 30,
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color.fromRGBO(255, 160, 0, 1))),
        child: (!isAdded)
            ? GestureDetector(
                onTap: () {
                  updateQuantity(true);
                  setState(() {
                    isAdded = true;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Text(
                    "Add",
                    style: TextStyle(color: Color.fromRGBO(255, 160, 0, 1)),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            :
            // ignore: dead_code
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      updateQuantity(false);
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Color.fromRGBO(255, 160, 0, 1),
                      size: 20,
                    ),
                  ),
                  GestureDetector(
                      child: Container(
                    width: 20,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 160, 0, 1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      quantity.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  )),
                  GestureDetector(
                    onTap: () {
                      updateQuantity(true);
                    },
                    child: const Icon(
                      Icons.add,
                      color: Color.fromRGBO(255, 160, 0, 1),
                      size: 20,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
