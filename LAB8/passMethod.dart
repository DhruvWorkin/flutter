import 'dart:io';
class one{
  void display(){
    print("Hello world");
  }
  void pass(Function() a){
    a();
  }
}
void main(){
  one obj = new one();
  obj.pass(obj.display);
}