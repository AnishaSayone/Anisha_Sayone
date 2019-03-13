import 'package:movie/models/response.dart';
import 'package:movie/repository/request.dart';

class MovieRepository{
  RequestApi _requestapi=RequestApi();

  Future<MovieResponse> getMovie(){
    return _requestapi.getMovie();
  }
}


class TvRepository{
  TvRequestApi _tvrequestapi=TvRequestApi();

  Future<TvResponse> getTvUser(){
    return _tvrequestapi.getTvUser();
  }
}