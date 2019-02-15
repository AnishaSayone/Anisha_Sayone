void main(){
    var comp=new Computer();
    comp ..usb=4..videoCoder=false..color="blue"..watts=212.4;

    comp.printMsg();

}
class Computer{
  int usb;
  String color;
  bool videoCoder;
  double watts;

  printMsg(){
    print("You have a $color computer with $usb usb and use $watts of power");
  }
}

