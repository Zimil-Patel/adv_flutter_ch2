import 'package:adv_flutter_ch2/global%20app%20list/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/adaptive%20widgets/adaptive_action_sheet.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/constants.dart';
import 'package:adv_flutter_ch2/platform%20converter/utils/platform_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdaptiveListTile extends StatelessWidget {
  const AdaptiveListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PlatformProvider provider =
        Provider.of<PlatformProvider>(context, listen: true);

    return provider.isAndroid
        ? Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: primaryGreen.withOpacity(0.2),
                  child: const FlutterLogo(),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: ListTile(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const BottomActionSheet(),
                      );
                    },
                    title: const Text('Jash24'),
                    subtitle: const Text(
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        'You use a default timer for disappearing messages in new chats. New messages will dis...'),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '19/02/23',
                          style: TextStyle(
                            fontSize: height * 0.016,
                            color: primaryGreen,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Transform.rotate(
                              angle: 120,
                              child: Icon(
                                size: height * 0.021,
                                CupertinoIcons.pin_fill,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            CircleAvatar(
                              radius: height * 0.008,
                              backgroundColor: primaryGreen,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      radius: 24,
                      backgroundColor: primaryGreen.withOpacity(0.2),
                      child: const FlutterLogo(),
                    ),
                  ),
                  Expanded(
                    child: CupertinoListTile(
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (context) => const BottomActionSheet(),
                        );
                      },
                      title: const Text('Jash24'),
                      subtitle: const Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          'You use a default timer for disappearing messages in new chats. New messages will dis...'),
                      additionalInfo: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '19/02/23',
                            style: TextStyle(
                              fontSize: height * 0.016,
                              color: primaryGreen,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Transform.rotate(
                                angle: 120,
                                child: Icon(
                                  size: height * 0.021,
                                  CupertinoIcons.pin_fill,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              CircleAvatar(
                                radius: height * 0.008,
                                backgroundColor: primaryGreen,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                thickness: 0.2,
                indent: 80,
              ),
            ],
          );
  }
}
