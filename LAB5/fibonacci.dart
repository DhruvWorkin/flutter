import 'dart:io';
void main(){
  print("How long fibo. series you want");
  int n=int.parse(stdin.readLineSync()!);
  fibo(n);
}
void fibo(int n){
  int x=0,y=1,z=x+y;
  for(int i=1;i<=n;i++){
    stdout.write("$x ");
    x=y;
    y=z;
    z=x+y;
  }
}