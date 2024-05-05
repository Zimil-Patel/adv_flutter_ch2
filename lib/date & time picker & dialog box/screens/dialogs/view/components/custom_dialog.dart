import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    DialogProvider providerFalse =
        Provider.of<DialogProvider>(context, listen: false);
    DialogProvider providerTrue =
        Provider.of<DialogProvider>(context, listen: true);
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xfff4e7e6),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 16, bottom: 16),
                  child: Text(
                    'Phone ringtone',
                    style: TextStyle(
                        color: Colors.black, fontSize: height * 0.025),
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 200,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    RadioListTile<String>(
                      title: const Text('None'),
                      value: 'None',
                      groupValue: providerTrue.selectedRingtone,
                      onChanged: (value) {
                        providerFalse.showButtonDialog(
                            context: context, value: value!);
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('Callisto'),
                      value: 'Callisto',
                      groupValue: providerTrue.selectedRingtone,
                      onChanged: (value) {
                        providerFalse.showButtonDialog(
                            context: context, value: value!);
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('Ganymede'),
                      value: 'Ganymede',
                      groupValue: providerTrue.selectedRingtone,
                      onChanged: (value) {
                        providerFalse.showButtonDialog(
                            context: context, value: value!);
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('Luna'),
                      value: 'Luna',
                      groupValue: providerTrue.selectedRingtone,
                      onChanged: (value) {
                        providerFalse.showButtonDialog(
                            context: context, value: value!);
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('Ringtone 5'),
                      value: 'Ringtone 5',
                      groupValue: providerTrue.selectedRingtone,
                      onChanged: (value) {
                        providerFalse.showButtonDialog(
                            context: context, value: value!);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 16, right: 20),
              child: Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Cancel',
                      style: TextStyle(color: Color(0xffa8525a)),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok',
                        style: TextStyle(color: Color(0xffa8525a))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
