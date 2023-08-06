// ignore_for_file: file_names

import 'package:fama/screens/home/widgets/mobile_appbar.dart';
import 'package:fama/screens/home/widgets/web_appbar.dart';
import 'package:flutter/material.dart';

import '../../breakpoints.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: constraints.minWidth < mobileBreakPoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: WebAppBar(),
                ),
          drawer:
              constraints.minWidth < mobileBreakPoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}
