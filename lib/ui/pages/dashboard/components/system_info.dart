import 'package:flutter/material.dart';

class SystemInfo extends StatelessWidget {
  const SystemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(
          color: const Color(0XFFEBEEF5)
        ),
      ),
      child: Row(
        children: const [
          SystemInfoItem(label: '系统：', content: 'CentOS Linux release 7.9.2009 (Core)',),
          SizedBox(width: 30,),
          SystemInfoItem(label: 'IP：', content: '39.99.238.155',),
          SizedBox(width: 30,),
          SystemInfoItem(label: '系统时间：', content: '2022-05-09T08:06:21.405Z',),
          SizedBox(width: 30,),
          SystemInfoItem(label: '系统运行时间：', content: '17天18时38分39秒',),
        ],
      ),
    );
  }
}

class SystemInfoItem extends StatelessWidget {
  final String label;
  final String content;
  const SystemInfoItem({
    Key? key, required this.label, required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: content,
          )
        ],
      ),
      style: const TextStyle(
        fontSize: 12,
      ),
    );
  }
}