import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';

class TotalDetails extends StatelessWidget {
  const TotalDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Shipping \$21.00',
          style: TextStyle(
              color: Colors.grey.withOpacity(0.7), fontSize: height * 0.019),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Tax \$10.32',
          style: TextStyle(
              color: Colors.grey.withOpacity(0.7), fontSize: height * 0.019),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Total \$203.32',
          style: TextStyle(
              color: Colors.grey.withOpacity(0.7),
              fontSize: height * 0.024,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}
