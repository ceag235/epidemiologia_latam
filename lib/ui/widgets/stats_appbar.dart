import 'dart:io';

import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class StatsBar extends StatelessWidget with PreferredSizeWidget {
  final VoidCallback callback;
  StatsBar({Key key, this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: whiteMonoLetter,
      leading: IconButton(
        icon: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
        color: darkMonoGrey,
        onPressed: callback,
      ),
      centerTitle: true,
      title: IconButton(
        icon: Icon(
          Icons.healing,
          size: 35,
          color: lightPink,
        ),
        onPressed: () {
          print("Logo pressed!");
        },
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.wb_sunny,
              color: darkMonoGrey,
            ),
            onPressed: () {
              print("Sun pressed!");
            }),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
