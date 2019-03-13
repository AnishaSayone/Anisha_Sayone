import 'package:movie/models/response.dart';
import 'package:movie/repository/movierepository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesBloc{
  final MovieRepository _repository=MovieRepository();
  final BehaviorSubject<MovieResponse> _subject= BehaviorSubject<MovieResponse>();

getMovie() async {
    MovieResponse response = await _repository.getMovie();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponse> get subject => _subject;

}
final bloc = MoviesBloc();



class TvBloc{
  final TvRepository _tvrepository=TvRepository();
  final BehaviorSubject<TvResponse> _subject= BehaviorSubject<TvResponse>();

getTvUser() async {
    TvResponse tvresponse = await _tvrepository.getTvUser();
    _subject.sink.add(tvresponse);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<TvResponse> get subject => _subject;

}
final blocTv = TvBloc();

