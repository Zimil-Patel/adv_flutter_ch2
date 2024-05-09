import 'package:flutter/cupertino.dart';

class SilverNavigation extends StatelessWidget {
  const SilverNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CupertinoSliverNavigationBar(
      // Large TITLE
      largeTitle: Text(
        'My People',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      automaticallyImplyLeading: false,
    );
  }
}
