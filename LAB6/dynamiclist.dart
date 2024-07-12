import 'dart:io';
void main(){
  List<dynamic> a=[];//declare
  stdout.write("Enter size of list : ");//size of list
  int n=int.parse(stdin.readLineSync()!);//size of list
  for(int i=1;i<=n;i++){//taking input
    var temp=stdin.readLineSync()!;//stores in temp
    a.add(temp);//adds to list
  }print(a);//print list
}