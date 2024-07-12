import 'dart:io';
void main(){
  List<double> a=[];
  stdout.write("Enter size of a list :");
  int n=int.parse(stdin.readLineSync()!);
  double sum=0;
  for(int i=1;i<=n;i++){
    double temp=double.parse(stdin.readLineSync()!);
    sum+=temp;
    a.add(temp);
  }print(a);
  stdout.write("${sum.toStringAsFixed((2))}");
}