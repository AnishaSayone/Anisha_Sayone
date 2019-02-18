main(){

Cake cake = new Cake<String,bool>();
print(cake.name="Black Forest");
print(cake.froasting=false);
//print(cake.list);

Cake cakeObj = new Cake<int,bool>();
print(cakeObj.code=9);
print(cakeObj.froasting=true);
}
class Cake<T ,E>{
  T name,code;
  E froasting;
  
}

