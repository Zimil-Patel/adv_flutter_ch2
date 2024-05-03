import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/components/product_row.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/view/components/total_details.dart';
import 'package:flutter/material.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: 20,
        ),
        ProductRow(
          img: 'necklace',
          name: 'Garden strand',
          price: 98,
        ),
        ProductRow(
          img: 'sunglasses',
          name: 'Stella sunglasses',
          price: 58,
        ),
        ProductRow(
          img: 'keyring',
          name: 'Weave keyring',
          price: 58,
        ),
        TotalDetails(),
      ],
    );
  }
}
