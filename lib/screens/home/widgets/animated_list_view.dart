import 'package:flutter/material.dart';

import 'list_data.dart';

class AnimatedListView extends StatelessWidget {
  final Animation<EdgeInsets> listSlidePosition;

  AnimatedListView({@required this.listSlidePosition});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListData(
          title: 'Learn Design Patterns',
          subtitle: 'Documentation',
          image: AssetImage('assets/images/profile.jpg'),
          margin: listSlidePosition.value * 3.0,
        ),
        ListData(
          title: 'Learn Flutter',
          subtitle: 'On Documentation',
          image: AssetImage('assets/images/profile.jpg'),
          margin: listSlidePosition.value * 2.0,
        ),
        ListData(
          title: 'Learn S.O.L.I.D',
          subtitle: ' ',
          image: AssetImage('assets/images/profile.jpg'),
          margin: listSlidePosition.value * 1.0,
        ),
        ListData(
          title: 'Learn Clean Architecture',
          subtitle: 'Clean Architecture',
          image: AssetImage('assets/images/profile.jpg'),
          margin: listSlidePosition.value * 0.0,
        ),
      ],
    );
  }
}
