class TvResults {

  final String poster;
  final String name;
  final String synopsis;
  final String date;
 

  TvResults(this.poster,this.name,this.synopsis,this.date);
  

  TvResults.fromJson(Map<String, dynamic> json)
          :poster=json["poster_path"],
          name=json["name"],
          synopsis=json["overview"],
          date=json["first_air_date"]
          ;
}