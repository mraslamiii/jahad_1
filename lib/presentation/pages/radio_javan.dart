import 'package:flutter/material.dart';

class RadioJavanPage extends StatelessWidget {
  const RadioJavanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          pinned: true,
          stretch: true,
          expandedHeight: 350,
          flexibleSpace: FlexibleSpaceBar(
            stretchModes: [StretchMode.zoomBackground],
            collapseMode: CollapseMode.parallax,
            title: Text('Test', style: TextStyle(color: Colors.black)),
            background: Image.network(
                'https://picsum.photos/id/5/500/600',
                fit: BoxFit.cover),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            color: Colors.black,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Moein',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
              Text('test test test test',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.white)),
              Row(
                children: [
                  Icon(Icons.shuffle, color: Colors.white),
                  Icon(Icons.emoji_emotions_outlined, color: Colors.white),
                  Icon(Icons.more_horiz, color: Colors.white),
                  Spacer(),
                  FilledButton(onPressed: () {}, child: Text('Follow'))
                ],
              )
            ]),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) => Container(
              height: 120,
              width: double.infinity,
              color: Colors.black,
              child: Text(
                "$index",
                style: TextStyle(color: Colors.white),
              )),
          itemCount: 30,
        )
      ],
    ));
  }
}
