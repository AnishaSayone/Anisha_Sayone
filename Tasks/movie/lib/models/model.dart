
class Results{

  
  final String posterpath;
  final String movietitle;
  final String synopsis;
  final String release;
  final double average;
  final List<Object> genre;
  final double time;
  


  Results(this.posterpath,this.movietitle,this.synopsis,this.release,this.average,this.genre,this.time);

  Results.fromJson(Map<String, dynamic> json)
      :posterpath=json["poster_path"],
      movietitle=json["title"],
      synopsis=json["overview"],
      release=json["release_date"],
      average=json["vote_average"],
      genre=json["genres"],
      time=json["runtime"]
      ;
}

