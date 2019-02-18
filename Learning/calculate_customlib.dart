import 'custom_library.dart';
void main(){
  var numOne=20;
  var numTwo=40;
  var sum=add(numOne,numTwo);
  var modulus=mod(numOne,numTwo);
  var r=randomNum(10);

  print("$numOne + $numTwo=$sum");
  print("$numOne % $numTwo=$modulus");
  print("Random num is $r");
}

