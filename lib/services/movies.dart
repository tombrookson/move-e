import 'dart:convert';

import 'package:http/http.dart';
import 'package:move_e/types/movies.dart';

class MoviesService {
  final String apiUrl = 'https://api.nytimes.com/svc/movies/v2/reviews/all.json?api-key=TrPJvhVl27h25gL0E1A7YAa6gQCCw0oJ';

  getMovies() async {
    Response res = await get(apiUrl);

    if (res.statusCode == 200) {
      final body = jsonDecode(res.body);
      
      return body['results'];
    } else {
      throw "Can't get posts.";
    }
  }
}