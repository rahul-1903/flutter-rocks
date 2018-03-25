import 'package:flutter/material.dart';
import 'package:flutter_rocks/models.dart';
import 'package:flutter_rocks/movie_detail_header.dart';
import 'package:flutter_rocks/story_line.dart';
import 'package:flutter_rocks/photo_scroller.dart';
import 'package:flutter_rocks/actor_scroller.dart';

class MovieDetailsPage extends StatelessWidget {
  MovieDetailsPage(this.movie);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new MovieDetailHeader(movie),
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: new StoryLine(movie.storyline),
            ),
            new PhotoScroller(movie.photoUrls),
            new Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                bottom: 50.0,
              ),
              child: new ActorScroller(movie.actors),
            ),
          ],
        ),
      ),
    );
  }


}