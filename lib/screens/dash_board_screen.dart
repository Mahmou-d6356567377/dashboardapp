import 'package:dashboardapp/widgets/adaptive_Ui_controller.dart';
import 'package:dashboardapp/widgets/desktop_layout_widget.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AdabtiveLayoutBuilder(
      mobilelayout: (context) => const Text('Mobile Layout'),
      tabletlayout: (context) => const Text('Tablet Layout'),
      desktoplayout: (context) => const DesktopLayoutWidget(),
    );
  }
}
