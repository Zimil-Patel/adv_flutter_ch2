import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class PersonsSilverList extends StatelessWidget {
  const PersonsSilverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 20,
        (context, index) => CupertinoListTile(
          title: Text(
            'Person ${index + 1}',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: height * 0.018,
            ),
          ),
          subtitle: Text((index + 1).toString()),
          padding: const EdgeInsets.all(12),
        ),
      ),
    );
  }
}
