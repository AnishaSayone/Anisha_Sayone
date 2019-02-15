void main(){
  int num=0;
  int count=0;
  for(num=0;num<=10;num++){
    if(num%2==0){
      continue;
    }
    count++;
  }
    print("Odd values between 0 and 10 is $count");
}