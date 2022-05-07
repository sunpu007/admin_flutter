import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/viewmodel/app_view_model.dart';

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