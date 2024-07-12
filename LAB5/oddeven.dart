import 'dart:io';
void main(){
 check();
}
void check(){
  int odd=0,even=0;
  print("Enter size of list :");
  int n=int.parse(stdin.readLineSync()!);
  List<int> a=[];
  for(int i=1;i<=n;i++){
    int temp=int.parse(stdin.readLineSync()!);
    a.add(temp);
    if(a[i]%2==0){
      even++;
    }else{
      odd++;
    }
    print("List contains $odd odd numbers and $even even numbers.");
  }

}