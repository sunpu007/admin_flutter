import 'package:flutter/material.dart';
import 'package:myapp/core/model/router_model.dart';
import 'package:myapp/ui/pages/dashboard/dashboard.dart';

class AppRouter {
  static final menus = [
    RouterModel(title: 'Dashboard', path: DashboardPage.routerName, icon: Icons.dashboard),
    RouterModel(title: '定时任务', path: DashboardPage.routerName, icon: Icons.timer),
    RouterModel(title: '系统管理', path: DashboardPage.routerName, icon: Icons.settings),
  ];
}