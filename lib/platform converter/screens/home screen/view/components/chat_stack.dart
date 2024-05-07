import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_list_tile.dart';
import 'package:adv_flutter_ch2/platform%20converter/screens/home%20screen/view/components/top_search_filter_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatStack extends StatelessWidget {
  const ChatStack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(),

          SizedBox(
            height: 8,
          ),

          // ListTile
          AdaptiveListTile(),
          AdaptiveListTile(),
          AdaptiveListTile(),
          AdaptiveListTile(),
          AdaptiveListTile(),
        ],
      ),
    );
  }
}
