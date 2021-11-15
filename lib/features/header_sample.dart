import 'package:flutter/material.dart';
import 'package:sliver_pwers/model/bottom_navigator_items.dart';

class HeaderSample extends StatefulWidget {
  const HeaderSample({Key? key}) : super(key: key);

  @override
  State<HeaderSample> createState() => _HeaderSampleState();
}

class _HeaderSampleState extends State<HeaderSample> {
  final _dummyImage = 'https://picsum.photos/1200';
  bool _isInnerScrool = false;
  final _durationLow = const Duration(seconds: 1);

  void _updateScroll(bool value) {
    if (_isInnerScrool == value) return;
    Future.microtask(() {
      setState(() {
        _isInnerScrool = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          _updateScroll(innerBoxIsScrolled);
          return [_headerSliverBar(context, innerBoxIsScrolled)];
        },
        body: Scaffold(
          bottomNavigationBar: _animatedItems(),
          body: _listview(),
        ));
  }

  AnimatedCrossFade _animatedItems() {
    return AnimatedCrossFade(
        firstChild: BottomNavigationBar(items: BottomNavigatorListModel().toWidgets()),
        secondChild: const SizedBox(),
        crossFadeState: _isInnerScrool ? CrossFadeState.showSecond : CrossFadeState.showFirst,
        duration: _durationLow);
  }

  SliverAppBar _headerSliverBar(BuildContext context, bool innerBoxIsScrolled) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.2,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(innerBoxIsScrolled ? 'Hello' : ' data'),
        centerTitle: false,
        background: Image.network(_dummyImage, fit: BoxFit.fill),
      ),
    );
  }

  ListView _listview() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Text('$index'),
        );
      },
    );
  }
}
