part of '../inner_listview.dart';

class _InnerListFirst extends StatelessWidget {
  const _InnerListFirst({Key? key, required this.items}) : super(key: key);
  final List<UserModel> items;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return SizedBox(
        height: WidgetHeight.card.rawValue(),
        child: Card(
          child: Center(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(items[index].image)),
              title: Text(items[index].name),
            ),
          ),
        ),
      );
    }, childCount: items.length));
  }
}
