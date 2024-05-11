import 'package:adv_flutter_ch2/cupertino%20segement%20control/constants.dart';
import 'package:adv_flutter_ch2/cupertino%20segement%20control/provider/segment_provider.dart';
import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class SegmentDemo extends StatelessWidget {
  const SegmentDemo({super.key});

  @override
  Widget build(BuildContext context) {
    SegmentProvider segmentProviderTrue =
        Provider.of<SegmentProvider>(context, listen: true);

    SegmentProvider segmentProviderFalse =
        Provider.of<SegmentProvider>(context, listen: false);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            middle: const Text('Segment Demo'),
            largeTitle: SizedBox(
              width: width / 1.09,
              child: CupertinoSlidingSegmentedControl(
                backgroundColor: CupertinoColors.black,
                thumbColor: CupertinoTheme.of(context).barBackgroundColor,
                groupValue: segmentProviderTrue.segmentIndex,
                children: {
                  '0': Text(
                    'Chats',
                    style: TextStyle(fontSize: height * 0.019),
                  ),
                  '1': Text(
                    'Calls',
                    style: TextStyle(fontSize: height * 0.019),
                  ),
                  '2': Text(
                    'Profile',
                    style: TextStyle(fontSize: height * 0.019),
                  ),
                },
                onValueChanged: (value) {
                  if (value != null) segmentProviderFalse.toggleIndex(value);
                },
              ),
            ),
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(
                  '${screens[int.parse(segmentProviderTrue.segmentIndex)]} Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
