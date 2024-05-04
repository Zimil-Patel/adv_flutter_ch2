import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/components/custom_app_bar.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/ios%20action%20sheet/constants.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    DialogProvider providerFalse =
        Provider.of<DialogProvider>(context, listen: false);
    DialogProvider providerTrue =
        Provider.of<DialogProvider>(context, listen: true);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: customAppBar(context: context, title: 'Dialog box'),
        body: Center(
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Phone Ringtone'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Divider(),
                        RadioListTile<String>(
                          title: Text('None'),
                          value: 'None',
                          groupValue: providerTrue.selectedRingtone,
                          onChanged: (value) {
                            providerFalse.showButtonDialog(
                                context: context, value: value!);
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('Ringtone 2'),
                          value: 'Ringtone 2',
                          groupValue: providerTrue.selectedRingtone,
                          onChanged: (value) {
                            providerFalse.showButtonDialog(
                                context: context, value: value!);
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('Ringtone 3'),
                          value: 'Ringtone 3',
                          groupValue: providerTrue.selectedRingtone,
                          onChanged: (value) {
                            providerFalse.showButtonDialog(
                                context: context, value: value!);
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('Ringtone 4'),
                          value: 'Ringtone 4',
                          groupValue: providerTrue.selectedRingtone,
                          onChanged: (value) {
                            providerFalse.showButtonDialog(
                                context: context, value: value!);
                          },
                        ),
                        RadioListTile<String>(
                          title: Text('Ringtone 5'),
                          value: 'Ringtone 5',
                          groupValue: providerTrue.selectedRingtone,
                          onChanged: (value) {
                            providerFalse.showButtonDialog(
                                context: context, value: value!);
                          },
                        ),
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Perform your action with selected ringtone
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              'Show Dialog',
              style:
                  TextStyle(fontSize: height * 0.03, color: cupertinotxtColor),
            ),
          ),
        ),
      ),
    );
  }
}
