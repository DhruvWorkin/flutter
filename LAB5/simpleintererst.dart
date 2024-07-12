import 'dart:io';
void main(){
  print("Enter principle amount : ");
  double p =double.parse(stdin.readLineSync()!);
  print("Enter rate of interest : ");
  double r =double.parse(stdin.readLineSync()!);
  print("Enter number of years : ");
  double n =double.parse(stdin.readLineSync()!);
  simpleinterest(p, r, n);

}
void simpleinterest(double p,double r,double n){
  double si=(p*r*n)/100;
  stdout.write("Simple interest is $si");
}