import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/android%20date%20picker/provider/andorid_date_picker_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextFieldForDate extends StatelessWidget {
  const TextFieldForDate({
    super.key,
    required this.primary,
  });

  final Color primary;

  @override
  Widget build(BuildContext context) {
    AndroidDatePickerProvider providerTrue =
        Provider.of<AndroidDatePickerProvider>(context, listen: true);
    AndroidDatePickerProvider providerFalse =
        Provider.of<AndroidDatePickerProvider>(context, listen: false);
    return Container(
      margin: const EdgeInsets.all(12),
      height: 60,
      child: TextField(
        controller: providerTrue.dateModel.txtDate,
        cursorColor: primary,
        onTapOutside: (event) => FocusManager.instance.primaryFocus!.unfocus(),
        decoration: InputDecoration(
          labelText: 'Select Date',
          labelStyle: const TextStyle(color: Colors.grey),
          suffixIcon: IconButton(
            onPressed: () {
              providerFalse.updateSelectedDate(context: context);
            },
            icon: Icon(
              Icons.date_range,
              color: primary,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: primary),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: primary,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
