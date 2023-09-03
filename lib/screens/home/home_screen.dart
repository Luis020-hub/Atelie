// ignore_for_file: file_names

import 'package:fama/screens/home/cards/como_chegar.dart';
import 'package:fama/screens/home/cards/equipe.dart';
import 'package:fama/screens/home/cards/horario.dart';
import 'package:fama/screens/home/cards/servicos.dart';
import 'package:fama/screens/home/widgets/mobile_appbar.dart';
import 'package:fama/screens/home/widgets/mobile_drawer.dart';
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
          drawer: constraints.minWidth < mobileBreakPoint
              ? const Drawer(child: MobileSideBar())
              : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(),
              child: ListView(
                children: const [
                  SizedBox(height: 6),
                  Horarios(),
                  SizedBox(height: 6),
                  Equipe(),
                  SizedBox(height: 6),
                  Servicos(),
                  SizedBox(height: 6),
                  ComoChegar(),
                  SizedBox(height: 6),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
