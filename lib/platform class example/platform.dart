import 'dart:io';

import 'package:flutter/material.dart';

class PlatformIndicatorApp extends StatelessWidget {
  const PlatformIndicatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Platform Example'),
        ),
        body: Center(
          child: Text(
            'Running on: ${getPlatform()}',
            style: const TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

String getPlatform() {
  if (Platform.isAndroid) {
    return 'Android';
  } else if (Platform.isIOS) {
    return 'iOS';
  } else if (Platform.isWindows) {
    return 'Windows';
  } else if (Platform.isMacOS) {
    return 'macOS';
  } else if (Platform.isLinux) {
    return 'Linux';
  } else if (Platform.isFuchsia) {
    return 'Fuchsia';
  } else {
    return 'Unknown';
  }
}
