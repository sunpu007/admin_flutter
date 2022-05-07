import 'package:flutter/material.dart';
import 'package:myapp/core/viewmodel/app_view_model.dart';
import 'package:provider/provider.dart';

import 'components/hamburger.dart';
import 'components/menu_item.dart';

class Layout extends StatelessWidget {
  final Widget? child;
  const Layout({ Key? key, this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<AppViewModel>(
        builder: (BuildContext context, AppViewModel appVM, Widget? child) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: appVM.sidebarStatus ? 210 : 54,
                height: double.infinity,
                color: const Color(0XFF304156),
                child: ListView(
                  children: [
                    MenuItemWidget(text: 'Dashboard', icon: Icons.dashboard, sidebarStatus: appVM.sidebarStatus,),
                    MenuItemWidget(text: '定时任务', icon: Icons.timer, sidebarStatus: appVM.sidebarStatus,),
                    MenuItemWidget(text: '系统管理', icon: Icons.settings, sidebarStatus: appVM.sidebarStatus,),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    HamburgerWidget()
                  ],
                ),
              )
            ],
          );
        }
      )
    );
  }
}



