import 'package:flutter/material.dart';

class CartBtn extends StatelessWidget {
  const CartBtn({super.key});

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
        child: (false)
            ? Text(
                "Add",
                style: TextStyle(color: Color.fromRGBO(255, 160, 0, 1)),
                textAlign: TextAlign.center,
              )
            :
            // ignore: dead_code
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
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
                    child: const Text(
                      "2",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  )),
                  GestureDetector(
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
