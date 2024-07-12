import 'dart:io';
void main(){
  print("Enter radius of circle :");
  double r=double.parse(stdin.readLineSync()!);
  print("area of circle is ${circle(r)}");

  print("Enter length, base and height of triangle");
  double l=double.parse(stdin.readLineSync()!);
  double b=double.parse(stdin.readLineSync()!);
  double h=double.parse(stdin.readLineSync()!);
  print("area of triangle is ${triangle(l,b,h)}");

  print("Enter length of square :");
  double sl=double.parse(stdin.readLineSync()!);
  print("area of square is ${square(sl)}");
}
double circle(double r){
  return 3.14*r*r;
}
double triangle(double l,double b,double h){
  return l*b*h*0.5;
}
double square(double sl){
  return sl*sl;
}