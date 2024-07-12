import 'dart:io';
void main(){
  List<int> a=[];
  stdout.write("Enter size of list");
  int n=int.parse(stdin.readLineSync()!);
  for (int i=1;i<=n;i++){
    int temp=int.parse(stdin.readLineSync()!);
    a.add(temp);
  }print(a);
}