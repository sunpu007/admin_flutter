import 'package:flutter/material.dart';

class SystemStatus extends StatelessWidget {
  const SystemStatus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        border: Border.all(
          color: const Color(0XFFEBEEF5)
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0XFFEBEEF5),
                )
              )
            ),
            child: const Text('状态'),
          ),
          Row(
            children: const [
              SystemStatueItem(color: Colors.red,),
              SystemStatueItem(color: Colors.yellow,),
              SystemStatueItem(color: Colors.blue,),
              SystemStatueItem(color: Colors.green,),
            ],
          )
        ],
      ),
    );
  }
}

class SystemStatueItem extends StatelessWidget {
  final Color color;
  const SystemStatueItem({
    Key? key, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 300,
        color: color,
        child: const Center(
          child: Text('cheart'),
        ),
      ),
    );
  }
}
