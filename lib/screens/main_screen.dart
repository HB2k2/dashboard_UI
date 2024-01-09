import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ticket_system/responsive.dart';
import 'package:ticket_system/screens/components/side_menu.dart';
import 'package:ticket_system/screens/dashboard/dashboard_screen.dart';
import 'package:ticket_system/controllers/menu_controller.dart' as mc;

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: context.read<mc.MenuController>().scaffoldKey,
        drawer: const SideMenu(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(
                  child: SideMenu(),
                ),
              const Expanded(
                flex: 5,
                child: DashBoardScreen(),
              )
            ],
          ),
        ));
  }
}
