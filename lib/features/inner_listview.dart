import 'package:flutter/material.dart';
import 'package:sliver_pwers/model/user.dart';
import 'package:sliver_pwers/product/grid_util.dart';
import 'package:sliver_pwers/product/widget_height.dart';

part './module/inner_list_first.dart';

class InnerListView extends StatefulWidget {
  const InnerListView({Key? key}) : super(key: key);

  @override
  State<InnerListView> createState() => _InnerListViewState();
}

class _InnerListViewState extends State<InnerListView> {
  late final List<UserModel> _items;
  final _dummyImage = 'https://picsum.photos/1200';
  final String hello = 'Hello';
  @override
  void initState() {
    super.initState();
    _items = UserModelList.init().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scrollbar(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(hello, style: Theme.of(context).textTheme.headline4),
            ),
            _InnerListFirst(items: _items),
            SliverAppBar(
              expandedHeight: 500,
              flexibleSpace: FlexibleSpaceBar(title: Text('Samples'), background: Image.network(_dummyImage)),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return const Card();
              }, childCount: 10),
              gridDelegate: HomePageGridDelegate(),
            ),
            const SliverToBoxAdapter(child: Placeholder()),
            SliverAppBar(
              expandedHeight: WidgetHeight.card.rawValue(),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(color: Colors.red),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: WidgetHeight.card.rawValue()))
          ],
        ),
      ),
    );
  }
}
