import 'dart:io';
void main(){
  print("Enter the value : ");
  int n=int.parse(stdin.readLineSync()!);
  check(n);
}
int? check(int n){
  if(n==0 || n==1){
    return 0;
  }else{
    for(int i=2;i<n/2;i++){
      if(n%i==0){
        return 0;
      }else{
        return 1;
      }
    }
  }
}