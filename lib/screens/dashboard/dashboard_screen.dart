import 'package:flutter/material.dart';
import 'package:ticket_system/constants.dart';
import 'package:ticket_system/responsive.dart';
import 'package:ticket_system/screens/components/header.dart';
import 'package:ticket_system/screens/components/my_files.dart';
import 'package:ticket_system/screens/components/recent_files.dart';
import 'package:ticket_system/screens/components/storage_details.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          const Header(),
          const SizedBox(height: defaultPadding),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    const MyFiles(),
                    const SizedBox(height: defaultPadding),
                    const RecentFiles(),
                    if (!Responsive.isMobile(context))
                      const SizedBox(height: defaultPadding),
                    if (!Responsive.isMobile(context))
                      const StorageDetails(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context))
                const SizedBox(width: defaultPadding),
              if (!Responsive.isMobile(context))
                const Expanded(
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
