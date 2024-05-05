import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/provider/dialog_provider.dart';
import 'package:adv_flutter_ch2/date%20&%20time%20picker%20&%20dialog%20box/screens/dialogs/view/components/body_of_screen.dart';
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

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: BodyOfScreen(),
    );
  }
}
