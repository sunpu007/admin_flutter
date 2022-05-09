import 'package:flutter/material.dart';
import 'package:myapp/ui/pages/layout/layout.dart';

import 'components/system_info.dart';
import 'components/system_status.dart';

class DashboardPage extends StatelessWidget {
  static const String routerName = '/dashboard';

  const DashboardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: const [
            SystemInfo(),
            SystemStatus()
          ],
        ),
      ),
    );
  }
}
