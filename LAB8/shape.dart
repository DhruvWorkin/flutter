import 'dart:io';
class shape{
  // late String name;
  void colorOfShape(){
    print("color of shape is black");
  }
}
class circle extends shape{
  void display(){
    super.colorOfShape();
  }
}
void main(){
  circle one=new circle();
  one.display();
}