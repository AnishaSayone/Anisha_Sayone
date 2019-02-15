void main(){
var obj=new ThirdClass();
print(obj.exist);
print(obj.names);
print(obj.version); 
}
class FirstClass{
double version=2.0;

}
class SecondClass{
bool exist = true;
}
class ThirdClass extends FirstClass with SecondClass{
var names=["lollipop","marshmellow"];
String label="Abc";
}