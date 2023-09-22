import 'package:class_flutter/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              // SliverToBoxAdapter()
              SliverPersistentHeader(
                delegate: SearchBoxHeaderDelegate(Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Expanded(flex: 4, child: Container(color: Colors.yellow)),
                      const Expanded(flex: 1, child: Icon(Icons.search))
                    ],
                  ),
                )),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: Container(
                    color: Colors.grey, width: double.infinity, height: 50),
              )
            ];
          },
          body: CustomScrollView(
            slivers: [
              SliverList.builder(
                itemBuilder: (context, index) => Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.red),
                itemCount: 30,
              ),
              SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Container(
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    color: Colors.red),itemCount: 20,
              )
            ],
          )),
    );
  }
}

class SearchBoxHeaderDelegate extends SliverPersistentHeaderDelegate {
  Widget widget;

  SearchBoxHeaderDelegate(this.widget);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(color: Colors.white, child: widget);
  }

  @override
  double get maxExtent => 180;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
// SizedBox(
// height: 1000,
// child: GridView.custom(
// gridDelegate: SliverQuiltedGridDelegate(
// crossAxisCount: 4,
// mainAxisSpacing: 4,
// crossAxisSpacing: 4,
// repeatPattern: QuiltedGridRepeatPattern.inverted,
// pattern: [
// QuiltedGridTile(2, 2),
// QuiltedGridTile(1, 1),
// QuiltedGridTile(1, 1),
// QuiltedGridTile(1, 2),
//
// ],
// ),
// childrenDelegate: SliverChildBuilderDelegate(
// (context, index) => Tile(index: index),
// ),
// ),
// )
