import 'package:flutter/material.dart';

import 'widgets/nav.dart';
import 'widgets/body.dart';
import 'widgets/side-bar.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFECECF8),
              Color(0xFFEAE7EE),
            ]),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Nav(),
            ),
            Expanded(
              flex: 7,
              child: Body(),
            ),
            Expanded(
              flex: 3,
              child: SideBar(),
            ),
          ],
        ),
      ),
    );
  }
}
