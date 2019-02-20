typedef ManyOperation(int firstNo , int secondNo); 
//function signature  

Add(int firstNo,int second){ 
   print("Sum is ${firstNo+second}"); 
} 
Subtract(int firstNo,int second){ 
   print("Difference is ${firstNo-second}"); 
}
Divide(int firstNo,int second){ 
   print("Quotient is ${firstNo/second}"); 
}  
Calculator(int a, int b, ManyOperation oper){ 
   print("Inside calculator"); 
   oper(a,b); 
}  
void main(){ 
   ManyOperation oper = Add; 
   oper(20,40); 
   oper = Subtract; 
   oper(50,40); 
   oper = Divide; 
   oper(50,5); 
} 