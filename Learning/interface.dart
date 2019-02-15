void main(){
    Calculator c=new Calculator();
    print("The total is ${c.total()}");
    print("Discount is ${c.disc()}");
}
class Calculate_total{
int total(){}
}
class Calculate_discount{
int disc(){}
}
class Calculator implements Calculate_total,Calculate_discount{
int total(){
  return 1000;
}
int disc(){
  return 100;
}
}