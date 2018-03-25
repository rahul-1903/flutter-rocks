import 'package:flutter/material.dart';
import 'package:flutter_rocks/models.dart';

class StoryLine extends StatelessWidget {
  StoryLine(this.storyline);

  final String storyline;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = Theme.of(context).textTheme;

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          'Story line',
          style: textTheme.subhead.copyWith(fontSize: 18.0),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: new Text(
            storyline,
            style:
                textTheme.body1.copyWith(color: Colors.black45, fontSize: 16.0),
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(
              'more',
              style: textTheme.body1.copyWith(fontSize: 16.0, color: theme.accentColor),
            ),
            new Icon(
              Icons.keyboard_arrow_down,
              size: 18.0,
              color: theme.accentColor,
            )
          ],
        ),
      ],
    );
  }
}
