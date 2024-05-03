import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  const ProductRow({
    super.key,
    required this.name,
    required this.price,
    required this.img,
  });

  final String name;
  final int price;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          // IMAGE
          Container(
            margin: const EdgeInsets.only(right: 10),
            height: height / 20,
            width: height / 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/2.1/$img.png')),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(6)),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(color: Colors.white, fontSize: height * 0.02),
              ),
              Text(
                '\$$price.00',
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.7),
                    fontSize: height * 0.016),
              ),
            ],
          ),

          const Spacer(),

          Text(
            '\$$price.00',
            style: TextStyle(fontSize: height * 0.02),
          )
        ],
      ),
    );
  }
}
