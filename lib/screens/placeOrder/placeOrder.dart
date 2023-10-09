import 'package:flutter/material.dart';
import 'package:menu_app/provider/categories_provider.dart';
import 'package:menu_app/screens/placeOrder/widgets/accordian.dart';
import 'package:menu_app/screens/placeOrder/widgets/place_order_btn.dart';
import 'package:provider/provider.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Categories>(context, listen: false).fetchCategories();
  }

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
                height: MediaQuery.of(context).size.height * 0.75,
                child: ListView.builder(
                    itemCount:
                        Provider.of<Categories>(context).categories.length,
                    itemBuilder: (context, index) {
                      return Accordian(
                          Products: Provider.of<Categories>(context)
                              .categories[index]
                              .Products,
                          name: Provider.of<Categories>(context)
                              .categories[index]
                              .name);
                    })),
            const PlaceOrderBtn()
          ],
        ),
      ),
    );
  }
}
