import 'dart:io';
class time{
  late int hour;
  late int minute;

  void get(hour, minute){
    this.hour=hour;
    this.minute=minute;
  }
  void add(t1,t2){
    hour=t1.hour+t2.hour;
    minute=t1.minute+t2.minute;
    print("$hour : $minute");
  }
}
void main(){
  time t1=new time();
  time t2=new time();
  time t3=new time();
  t1.get(5,30);
  t2.get(6,29);
  t3.get(0,0);
  t3.add(t1,t2);
}