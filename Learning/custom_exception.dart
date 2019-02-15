class custmException implements Exception{
  String errMsg() =>"Amount should be greater than zero";
}
void main(){
    try{
      withdraw_amt(-200);
    }
    catch(e){
      print(e.errMsg());
    }
    finally{
      print("Terminating the process..");
    }
}
void withdraw_amt(int amt){
  if(amt<=0){
    throw custmException();
  }
}