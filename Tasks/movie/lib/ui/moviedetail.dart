import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class MovieDetail extends StatelessWidget {
  final Widget child;
  var filmImage;
  var filmTitle;
  var filmSynopsis;
  var filmRelease;
  var filmAvg;
  int starCount = 5;
  double rating = 3.5;
  var filmTime;

  MovieDetail({
    Key key,
    this.child,
    String item,
    String title,
    String overview,
    String date,
    double avg,
    double time,
  }) : super(key: key) {
    filmImage = item;
    filmTitle = title;
    filmSynopsis = overview;
    filmRelease = date;
    filmAvg = avg;
    filmTime = time;
  }

  @override
  Widget build(BuildContext context) {
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
              child: Icon(Icons.audiotrack),
            )
          ],
        ),
        body: Stack(alignment: Alignment.centerRight, children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(16.0),
                      width: MediaQuery.of(context).size.width / 2,
                      child: new Card(
                        child: Image.network(filmImage),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 2,
                        padding: EdgeInsets.only(top: 25.0),
                        child: Column(
                          children: <Widget>[
                            new Flexible(
                              child: Text(
                                filmTitle,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            new Row(
                              children: <Widget>[
                                new Text(
                                  filmRelease,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                                new Text(" | ",style: TextStyle(color: Colors.white),),
                                new Text(
                                  filmRelease,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10.0),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 70.0),
                              child: StarRating(
                                size: 25.0,
                                starCount: starCount,
                                rating: rating,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 2,
                  color: Colors.white,
                  padding: EdgeInsets.all(16.0),
                  child: new Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Synopsis:",
                          style: TextStyle(fontSize: 18.0),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0),
                      ),
                      new Flexible(
                        child: Text(
                          filmSynopsis,
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ))
            ],
          ),
          Align(
              alignment: Alignment.centerRight,
              child: RaisedButton(
                child: Text(
                  "BOOK NOW",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                onPressed: () {},
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
              )),
        ]));
  }
}

class TvDetail extends StatelessWidget {
  final Widget child;
  var tvImage;
  var tvTitle;
  var tvSynopsis;
  var tvRelease;
  int starCount = 5;
  double rating = 3.5;

  TvDetail(
      {Key key,
      this.child,
      String item,
      String title,
      String overview,
      String date})
      : super(key: key) {
    tvImage = item;
    tvTitle = title;
    tvSynopsis = overview;
    tvRelease = date;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF455A64),
        appBar: new AppBar(
          backgroundColor: const Color(0xFF455A64),
          title: Center(
            child: new Text("Tv series"),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        width: MediaQuery.of(context).size.width / 2,
                        child: new Card(
                          child: Image.network(tvImage),
                        ),
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding: EdgeInsets.only(top: 25.0),
                          child: Column(
                            children: <Widget>[
                              new Flexible(
                                child: Text(
                                  tvTitle,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: new Text(
                                  tvRelease,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 70.0),
                                child: StarRating(
                                  size: 25.0,
                                  starCount: starCount,
                                  rating: rating,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0),
                    child: new Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Synopsis:",
                            style: TextStyle(fontSize: 18.0),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0),
                        ),
                        new Flexible(
                          child: Text(
                            tvSynopsis,
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Align(
                alignment: Alignment.centerRight,
                child: RaisedButton(
                  child: Text("BOOK NOW",style: TextStyle(color: Colors.blueAccent),),
                  onPressed: () {},
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                )),
          ],
        ));
  }
}
