import 'package:movie/models/response.dart';
import 'package:dio/dio.dart';

class RequestApi{
  final String endpoint="https://api.themoviedb.org/3/movie/now_playing?api_key=79f1475c87b904754aec199a39375257&language=en-US&page=1";
  final Dio dio=Dio();

   Future<MovieResponse> getMovie() async {
    try {
      Response response = await dio.get(endpoint);
      return MovieResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return MovieResponse.withError("$error");
    }
  }

}


class TvRequestApi{
  final String tvendpoint="https://api.themoviedb.org/3/tv/top_rated?api_key=79f1475c87b904754aec199a39375257&language=en-US&page=1";
  final Dio dio=Dio();

   Future<TvResponse> getTvUser() async {
    try {
      Response tvresponse = await dio.get(tvendpoint);
      return TvResponse.fromJson(tvresponse.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return TvResponse.withError("$error");
    }
  }

}