import 'package:flutter/material.dart';

class HomePageGridDelegate extends SliverGridDelegateWithFixedCrossAxisCount {
  HomePageGridDelegate() : super(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10);
  // SliverGridDelegateWithFixedCrossAxisCount(
  //                 crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10)
}
