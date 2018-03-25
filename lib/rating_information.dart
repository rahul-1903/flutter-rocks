import 'package:flutter/material.dart';
import 'package:flutter_rocks/models.dart';

class RatingInformation extends StatelessWidget {
  RatingInformation(this.movie);

  final Movie movie;

  _buildRatingBar(ThemeData theme) {
    var stars = <Widget>[];

    for (var i=1; i<=5; ++i) {
      var color = i<=movie.starRating?theme.accentColor:Colors.black12;
      var star = new Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }
    return new Row(children:stars);
  }
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var numericRating = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Text(
          movie.rating.toString(),
          style: new TextStyle(
            fontWeight: FontWeight.w400,
            color: theme.accentColor,
          ),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: new Text('Ratings'),
        ),
      ],
    );

    var starRating = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _buildRatingBar(theme),
        new Padding(
          padding: const EdgeInsets.only(top:4.0, left: 4.0),
          child: new Text('Grade now'),
        ),
      ],
    );

    return new Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        numericRating,
        new Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: starRating,
        ),
      ],
    );
  }
}
