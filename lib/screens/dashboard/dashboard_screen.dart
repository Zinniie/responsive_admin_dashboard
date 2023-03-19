// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants.dart';
import 'package:responsive_admin_dashboard/responsive.dart';

import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header(),
              SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          MyFiles(),
                          SizedBox(
                            height: defaultPadding,
                          ),
                          RecentFiles(),
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: defaultPadding,
                            ),
                          // on mobile means if tge screen is less thab 850; we dont want it to shiw
                          if (Responsive.isMobile(context)) StorageDetails(),
                        ],
                      )),
                  if (!Responsive.isMobile(context))
                    SizedBox(
                      width: defaultPadding,
                    ),
                  // on mobile means if tge screen is less thab 850; we dont want it to shiw
                  if (!Responsive.isMobile(context))
                    Expanded(
                      flex: 2,
                      child: StorageDetails(),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
