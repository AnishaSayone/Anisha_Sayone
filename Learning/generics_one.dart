main(){
    print(1);
    print(add(5));
    Sample s =new Sample();
    s.value="String value";
    print(s.value);
    s.show();
}

void msgFunc<T>(T value){
print(value);
}
T add<T extends num>(T value){
return value+1;
}

class Sample<T>{
 T value;
void show(){
print("Hey there");
}
}