void main(){
  var list =[1,2,3,4,5];
  print("The values are $list");

  list.replaceRange(0, 2, [7,7,7]);
  print("The value of list after replacing the items between the given range is $list");
}