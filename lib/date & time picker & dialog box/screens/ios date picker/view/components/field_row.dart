import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20date%20picker/provider/ios_date_picker_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FieldRow extends StatelessWidget {
  const FieldRow(
      {super.key,
      this.showValue = false,
      required this.text,
      required this.icon,
      this.provider});

  final showValue;
  final String text;
  final IconData icon;
  final IosDtaePickerProvider? provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.grey.withOpacity(0.7),
            ),
            const SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: TextStyle(color: Colors.grey.withOpacity(0.7)),
            ),
            const Spacer(),
            showValue
                ? Text(
                    '${DateFormat('EEEE').format(provider!.model.date)} ${DateFormat('MMM').format(provider!.model.date)} ${DateFormat('dd').format(provider!.model.date)}, ${DateFormat('yyyy').format(provider!.model.date)}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  )
                : const SizedBox(),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
