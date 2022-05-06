import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 210,
            height: double.infinity,
            color: const Color(0XFF304156),
          ),
          Expanded(
            child: Column(
              children: const [
                HamburgerWidget()
              ],
            ),
          )
        ],
      ),
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
        children: const [
          Icon(Icons.menu_open),
          // IconButton(
          //   icon: Icon(Icons.menu_open),
          //   onPressed: () {},
          // ),
        ],
      ),
    );
  }
}