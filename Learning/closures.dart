makeAdder(num Addby){
    return (num i) => Addby + i;
  }
void main(){
  var addTwo=makeAdder(2);
  var addFour=makeAdder(4);
 print(addTwo(3));
 print(addFour(5));
  // print(makeAdder(2));
}