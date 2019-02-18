main(){
    List<int> numbers=[0,1,2,3,4,5];
    sum(numbers);
}

    sum<T extends num>(List<T> list){
      T res=list[0];
      for(var i=1;i<list.length;i++){
        res=res+list[i];
      }
      print("The sum of the numbers:$res");
    }

