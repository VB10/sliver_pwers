import 'package:flutter/material.dart';
import 'package:sliver_pwers/features/header_sample.dart';

import 'features/inner_listview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: InnerListView(),
    );
  }
}
