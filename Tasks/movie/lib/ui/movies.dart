import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:movie/bloc/movies_bloc.dart';
import 'package:movie/models/response.dart';
import 'package:movie/models/model.dart';
import 'package:movie/models/tvmodel.dart';
import 'moviedetail.dart';
import 'package:movie/navdrawer.dart';

class MovieList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MovieListState();
  }
}

class _MovieListState extends State<MovieList> {
  var img;
  var bannerImg;
  int count;

  @override
  void initState() {
    super.initState();
    bloc.getMovie();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MovieResponse>(
        stream: bloc.subject.stream,
        builder: (context, AsyncSnapshot<MovieResponse> snapshot) {
          if (snapshot.hasData) {
            count = snapshot.data.result.length;
            if (snapshot.data.error != null && snapshot.data.error.length > 0) {
              return _buildErrorWidget(snapshot.data.error);
              // return new Container(
              //   child: Text("No internet connection"),
              // );
            }
            return _buildMovieWidget(snapshot.data);
          } else if (snapshot.hasError) {
            return _buildErrorWidget(snapshot.error);
          } else {
            return _buildLoadingWidget();
          }
        });
  }

  Widget _buildLoadingWidget() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "loading...",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
        )
      ],
    ));
  }

  Widget _buildErrorWidget(String error) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error occured: $error",style: TextStyle(color: Colors.white),),
      ],
    ));
  }

  Widget _buildMovieWidget(MovieResponse data) {
    return Scaffold(
        backgroundColor: const Color(0xFF455A64),
        appBar: new AppBar(
          backgroundColor: const Color(0xFF455A64),
          title: Center(
            child: new Text("Movies"),
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: new NavDrawer(),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: count,
                        itemBuilder: (BuildContext context, int index) {
                          Results user = data.result[index];
                          bannerImg =
                              "https://image.tmdb.org/t/p/w1000_and_h563_face/" +
                                  user.posterpath;
                          return Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Image.network(bannerImg),
                          );
                        })),
                Text(
                  "Now Showing",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height) * 1.6,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: count,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      Results user = data.result[index];
                      img = "https://image.tmdb.org/t/p/w370_and_h556_bestv2/" +
                          user.posterpath;
                      return GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          child: new Image(
                            image: NetworkImage(img),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MovieDetail(
                                      item:
                                          "https://image.tmdb.org/t/p/w370_and_h556_bestv2/" +
                                              user.posterpath,
                                      title: user.movietitle,
                                      date: user.release,
                                      overview: user.synopsis,
                                      avg: user.average,
                                    )),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }
  Widget _buildRow(int i) {
    return new Padding(
      padding: const EdgeInsets.all(12.0),
      child: new Image(
        image: NetworkImage(img),
      ),
    );
  }
}

class TvList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TvListState();
  }
}

class _TvListState extends State<TvList> {
  var tvimg;
  var tvbannerImg;
  @override
  void initState() {
    super.initState();
    blocTv.getTvUser();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TvResponse>(
        stream: blocTv.subject.stream,
        builder: (context, AsyncSnapshot<TvResponse> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.error != null && snapshot.data.error.length > 0) {
              return _buildErrorWidget(snapshot.data.error);
              // return new Container(
              //   child: Text("No internet connection"),
              // );
            }
            return _buildTvWidget(snapshot.data);
          } else if (snapshot.hasError) {
            return _buildErrorWidget(snapshot.error);
          } else {
            return _buildLoadingWidget();
          }
        });
  }

  Widget _buildLoadingWidget() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "loading...",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5),
        ),
        CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
        )
      ],
    ));
  }

  Widget _buildErrorWidget(String error) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Error occured: $error"),
      ],
    ));
  }

  Widget _buildTvWidget(TvResponse data) {
    return Scaffold(
        backgroundColor: const Color(0xFF455A64),
        appBar: new AppBar(
          backgroundColor: const Color(0xFF455A64),
          title: Center(
            child: new Text("Tv Series"),
          ),
          actions: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        drawer: new NavDrawer(),
        body: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height / 3,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        itemBuilder: (BuildContext context, int index) {
                          TvResults user = data.result[index];
                          tvbannerImg =
                              "https://image.tmdb.org/t/p/w1000_and_h563_face/" +
                                  user.poster;
                          return Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Image.network(tvbannerImg),
                          );
                        })),
                Text(
                  "Top Rated",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Container(
                  height: (MediaQuery.of(context).size.height) * 1.6,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (BuildContext context, int index) {
                      TvResults user = data.result[index];
                      tvimg =
                          "https://image.tmdb.org/t/p/w370_and_h556_bestv2/" +
                              user.poster;
                      return GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          child: new Image(
                            image: NetworkImage(tvimg),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TvDetail(
                                    item:
                                        "https://image.tmdb.org/t/p/w370_and_h556_bestv2/" +
                                            user.poster,
                                    title: user.name,
                                    date: user.date,
                                    overview: user.synopsis)),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ));
  }
  Widget _buildRow(int i) {
    return new Padding(
      padding: const EdgeInsets.all(12.0),
      child: new Image(
        image: NetworkImage(tvimg),
      ),
    );
  }
}
