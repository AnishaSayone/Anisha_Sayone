import 'package:movie/models/model.dart';
import 'package:movie/models/tvmodel.dart';

class MovieResponse{
  final List<Results> result;
  final String error;

  MovieResponse(this.result, this.error);

  MovieResponse.fromJson(Map<String, dynamic> json)
    : result =
            (json["results"] as List).map((i) => new Results.fromJson(i)).toList(),
        error = "";

        MovieResponse.withError(String errorValue)
      : result = List(),
        error = errorValue;
}

class TvResponse{

  final List<TvResults> result;
  final String error;

  TvResponse(this.result, this.error);

  TvResponse.fromJson(Map<String, dynamic> json)
    : result =
            (json["results"] as List).map((i) => new TvResults.fromJson(i)).toList(),
        error = "";

        TvResponse.withError(String errorValue)
      : result = List(),
        error = errorValue;
}
  
