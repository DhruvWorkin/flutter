import 'dart:io';
void main(){
  List<String> a=[];
  stdout.write("Enter sixe of a list :");
  int n=int.parse(stdin.readLineSync()!);
  for(int i=1;i<=n;i++){
    String temp=stdin.readLineSync()!;
    a.add(temp);
  }print(a);
}