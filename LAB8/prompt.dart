import 'dart:io';
void main(){
  print("Enter five values :");
  List<int> a=[];
  for(int i=0;i<5;i++){
    int temp=int.parse(stdin.readLineSync()!);
    a.add(temp);
  }
  a.sort();
  for(int i=0;i<5;i++){
    print(a[i]);
  }
}
