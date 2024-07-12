import 'dart:io';
class Circle{
  late double radius;

  void get(radius){
    this.radius=radius;
  }
  double area(){
    return 3.14*radius*radius;
  }
  double perimeter(){
    return 2*3.14*radius;
  }
}
void main(){
  Circle one=new Circle();
  one.get(10.0);
  print(one.area());
  print(one.perimeter());
}