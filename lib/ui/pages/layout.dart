import 'package:flutter/material.dart';
import 'package:myapp/core/viewmodel/app_view_model.dart';
import 'package:provider/provider.dart';

class Layout extends StatelessWidget {
  const Layout({ Key? key }) : super(key: key);

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

class MenuItemWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool sidebarStatus;
  const MenuItemWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.sidebarStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56,
        padding: EdgeInsets.only(left: sidebarStatus ? 20 : 0),
        child: Row(
          mainAxisAlignment: sidebarStatus ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: const Color(0XFFBFCBD9),
            ),
            SizedBox(width: sidebarStatus ? 16 : 0,),
            Text(
              sidebarStatus ? text : '',
              style: const TextStyle(
                color: Color(0XFFBFCBD9),
              ),
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }
}

class HamburgerWidget extends StatelessWidget {
  const HamburgerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0X22000000),
            // spreadRadius: .5,
            blurRadius: 4,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // const Icon(Icons.menu_open),
          Consumer<AppViewModel>(
            builder: (BuildContext context, AppViewModel appVM, Widget? child) {
              return IconButton(
                icon: Icon(appVM.sidebarStatus ? Icons.menu_open : Icons.menu),
                onPressed: () {
                  appVM.sidebarStatus = !appVM.sidebarStatus;
                }
              );
            }
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://oss-blog.myjerry.cn/files/avatar/blog-avatar.jpg?imageView2/1/w/80/h/80',
              width: 40,
              height: 40,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}