// ignore_for_file: prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_admin_dashboard/constants.dart';

import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/storage_details.dart';
import 'components/storage_info_card.dart';

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
                      child: MyFiles()),
                  SizedBox(
                    width: defaultPadding,
                  ),
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


