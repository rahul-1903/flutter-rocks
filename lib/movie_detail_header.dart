import 'package:flutter/material.dart';
import 'package:flutter_rocks/models.dart';
import 'package:flutter_rocks/poster.dart';
import 'package:flutter_rocks/rating_information.dart';

class MovieDetailHeader extends StatelessWidget {
  MovieDetailHeader(this.movie);

  final Movie movie;

  _buildCategoryChips() {
    return movie.categories.map((category) {
      return new Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: new Chip(
          label: new Text(category),
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var movieInformation = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(movie.title),
        new Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: new RatingInformation(movie),
        ),
        new Padding(
          padding: const EdgeInsets.only(top:12.0),
          child: new Row(
            children: _buildCategoryChips(),
          ),
        ),
      ],
    );

    return new Stack(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: new Image.asset(
            movie.bannerUrl,
            width: MediaQuery.of(context).size.width,
            height: 230.0,
            fit: BoxFit.cover,
          ),
        ),
        new Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Poster(
                movie.posterUrl,
                height: 180.0,
              ),
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: movieInformation,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
