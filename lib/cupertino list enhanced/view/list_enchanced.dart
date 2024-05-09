import 'package:adv_flutter_ch2/cupertino%20list%20enhanced/view/components/multiple_select_section.dart';
import 'package:adv_flutter_ch2/cupertino%20list%20enhanced/view/components/single_select_section.dart';
import 'package:flutter/cupertino.dart';

class CupertinoListEnchanced extends StatelessWidget {
  const CupertinoListEnchanced({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => CupertinoPageScaffold(
        backgroundColor: const Color(0xfff2f2f7),
        navigationBar: const CupertinoNavigationBar(
          automaticallyImplyLeading: false,
          middle: Text('Cupertino Lists Enchanced'),
        ),
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).padding.top + 40),
          child: CustomScrollView(
            slivers: <SliverList>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const SingleSelectionSection(),
                    const MultipleSelectionSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
