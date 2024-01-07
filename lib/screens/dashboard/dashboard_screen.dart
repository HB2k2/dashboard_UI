import 'package:flutter/material.dart';
import 'package:ticket_system/constants.dart';
import 'package:ticket_system/screens/components/header.dart';
import 'package:ticket_system/screens/components/my_files.dart';
import 'package:ticket_system/screens/components/recent_files.dart';
import 'package:ticket_system/screens/components/storage_details.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Header(),
          SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                    ],
                  )),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 2,
                child: StorageDetails(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}