import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/screens/dashboard/dashboard_screen.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            // default flex = 1; it takes 1/6 part of the screen
            child: Container(
              child: SideMenu(),
            ),
          ),
          Expanded(
              // it takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen())
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
