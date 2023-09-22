import 'package:class_flutter/data/models/story_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: fakeStoryList.length,
                itemBuilder: (context, index) =>
                    storyWidget(fakeStoryList[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.index,
    this.extent,
    this.backgroundColor,
    this.bottomSpace,
  }) : super(key: key);

  final int index;
  final double? extent;
  final double? bottomSpace;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final child = Container(
      color: backgroundColor ?? Colors.red,
      height: extent,
      child: Center(
        child: CircleAvatar(
          minRadius: 20,
          maxRadius: 20,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          child: Text('$index', style: const TextStyle(fontSize: 20)),
        ),
      ),
    );

    if (bottomSpace == null) {
      return child;
    }

    return Column(
      children: [
        Expanded(child: child),
        Container(
          height: bottomSpace,
          color: Colors.green,
        )
      ],
    );
  }
}

Widget storyWidget(StoryModel storyModel) {
  return Container(
    width: 100,
    height: 150,
    margin: EdgeInsets.only(left: 16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.red, width: 1)),
    child: Container(
      margin: EdgeInsets.all(2),
      child: Stack(children: [
        Positioned.fill(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  storyModel.image,
                  fit: BoxFit.cover,
                ))),
        Positioned(
          top: 8,
          left: 8,
          child: Visibility(
            visible: storyModel.isLive,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: Text('Live', style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
        Positioned(
            bottom: 8,
            right: 8,
            left: 8,
            child: Row(
              children: [
                SizedBox(
                    width: 25,
                    height: 25,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(storyModel.avatar))),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Text(storyModel.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700)),
                  ),
                )
              ],
            )),
      ]),
    ),
  );
}
