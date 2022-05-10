import 'package:flutter/material.dart';
import 'package:myapp/core/router/router.dart';
import 'package:myapp/core/viewmodel/app_view_model.dart';
import 'package:provider/provider.dart';

import 'components/hamburger.dart';
import 'components/menu_item.dart';

class Layout extends StatelessWidget {
  final Widget child;
  const Layout({ Key? key, required this.child }) : super(key: key);

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
                  children: AppRouter.menus.map((item) => MenuItemWidget(text: item.title!, icon: item.icon!, sidebarStatus: appVM.sidebarStatus,)).toList(),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HamburgerWidget(),
                    Expanded(
                      child: this.child,
                    ),
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



