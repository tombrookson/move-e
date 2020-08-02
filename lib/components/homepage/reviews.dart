import 'package:flutter/material.dart';
import 'package:move_e/services/movies.dart';
import 'package:move_e/types/movies.dart';

class Reviews extends StatefulWidget {
  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  final MoviesService moviesService = new MoviesService();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: moviesService.getMovies(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            final movies = snapshot.data;

            return ListView.builder(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 15.0),
              itemCount: movies.length,
              itemBuilder: (context, i) {
                return _buildReview(movies[i]);
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Widget _buildReview(review) {
    return Container(
      height: 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      review['display_title'],
                      style: TextStyle(
                        fontSize: 18.0
                      ),
                    ),
                    Container(
                      height: 5,
                    ),
                    Flexible(
                      child: Text(
                        review['byline'],
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0xFFaeb0b3),
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
            ),
            Container(
              width: 120,
              height: 100,
              child: Image.network(
                review['multimedia']['src'],
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0xFFefefef),
            spreadRadius: 1,
            blurRadius: 13,
          ),
        ],
      ),
    );
  }
}