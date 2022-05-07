import 'package:flutter/material.dart';
import 'package:myapp/ui/pages/layout.dart';
import 'package:provider/provider.dart';

import 'core/viewmodel/app_view_model.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppViewModel()),
    ],
    child: const MyApp(),
  )
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '任务调度与动态权限',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      home: const Layout(),
    );
  }
}

