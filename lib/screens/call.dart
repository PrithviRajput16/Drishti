// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Call'),
      ),
      body: SafeArea(
        child: ZegoUIKitPrebuiltCall(
          appID: 484070095,
          appSign:
              "f4b2a4b7d2d321088662488528fef0addcebbff4926e624760b6dd8ef02bf0d7",
          callID: "4455",
          userID: "1234",
          userName: "Shadow",
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
            ..onOnlySelfInRoom = (context) => Navigator.pop(context),
        ),
      ),
    );
  }
}
