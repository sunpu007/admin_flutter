import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MenuItemWidget extends StatefulWidget {
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
  State<MenuItemWidget> createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget> {
  bool hoverStatus = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (PointerEnterEvent event) {
        setState(() {
          hoverStatus = true;
        });
      },
      onExit: (PointerExitEvent event) {
        setState(() {
          hoverStatus = false;
        });
      },
      child: GestureDetector(
        child: Container(
          height: 56,
          color: hoverStatus ? const Color(0xFF263445) : Colors.transparent,
          padding: EdgeInsets.only(left: widget.sidebarStatus ? 20 : 0),
          child: Row(
            mainAxisAlignment: widget.sidebarStatus ? MainAxisAlignment.start : MainAxisAlignment.center,
            children: [
              Icon(
                widget.icon,
                color: Color(widget.text == 'Dashboard' ? 0XFF409EFF : 0XFFBFCBD9),
              ),
              SizedBox(width: widget.sidebarStatus ? 16 : 0,),
              Text(
                widget.sidebarStatus ? widget.text : '',
                style: TextStyle(
                  color: Color(widget.text == 'Dashboard' ? 0XFF409EFF : 0XFFBFCBD9),
                ),
              )
            ],
          ),
        ),
        onTap: () {},
      ),
    );
  }
}