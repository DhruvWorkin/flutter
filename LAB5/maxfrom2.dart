import 'dart:io';
void main(){
  print("Enter first value :");
  int a =int.parse(stdin.readLineSync()!);
  print("Enter first value :");
  int b =int.parse(stdin.readLineSync()!);
  max(a,b);
}
void max(int a, int b){
  if(a>b){
    stdout.write("$a is largest");
  }else{
    stdout.write("$b is largest");
  }
}