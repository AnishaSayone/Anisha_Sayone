import 'dog.dart';
main(){
   
    print(add(5));
    Dog.speak();
    Trainer t=new Trainer();
    t.display();
}

void msgFunc<T>(T value){
print(value);
}
T add<T extends num>(T value){
return value+1;
}

class Trainer<T extends Dog>{
var list=["Cat","Dog","Birds"];
void display(){
print("Animals list: $list");
}




  //List<T> animals=new List<T>();
  //void add(T value) => animals.add(value);
  //void remove(T value)=>animals.remove(value);
}