void main(){
var tv=new SmartTv();
tv.turnOn();
}
class Television{
void turnOn(){
  print("Display turning on");
    print("Activate IR sensor");
}
}
class SmartTv extends Television{
void turnOn(){
  super.turnOn();
  print("Boot network interface");
}
}