import 'package:flutter/material.dart';
import 'package:movie/ui/movies.dart';

class NavDrawer extends StatelessWidget {
  final Widget child;

  NavDrawer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Drawer(
        child: Container(
      color: const Color(0xFF455A64),
      child: ListView(
        children: <Widget>[
         // Image.asset('Themoviedb.jpg'),
          new ListTile(
            title: new Text(
              "Movies",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.movie,
              color: Colors.white,
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MovieList()));
            },
          ),
          new ListTile(
            title: new Text(
              "Tv",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.tv,
              color: Colors.white,
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TvList()));
            },
          )
        ],
      ),
    ));
  }
}
