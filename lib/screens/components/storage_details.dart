import 'package:flutter/material.dart';
import 'package:ticket_system/constants.dart';
import 'package:ticket_system/screens/components/chart.dart';
import 'package:ticket_system/screens/components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: primaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StorageInfoCard(
            title: 'Document Files',
            svgSrc: 'icons/Documents.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            title: 'Media Files',
            svgSrc: 'icons/media.svg',
            amountOfFiles: '15.3GB',
            numOfFiles: 1328,
          ),
           StorageInfoCard(
            title: 'Other Files',
            svgSrc: 'icons/folder.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
           StorageInfoCard(
            title: 'Unkown Files',
            svgSrc: 'icons/unknown.svg',
            amountOfFiles: '1.3GB',
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}

