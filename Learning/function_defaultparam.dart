void main(){
 doStuff(
  {List <int> list=const[1,2,3],
   Map<String,String> codes=const{'codeOne':'A','codeTwo':'B'}}){
     print("List:$list");
     print("The codes are: $codes");
   }
  print(doStuff());
}
