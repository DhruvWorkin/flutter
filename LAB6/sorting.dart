import 'dart:io';
void main(){
  List<int> a=[];
  stdout.write("Enter size of list");
  int n=int.parse(stdin.readLineSync()!);
  for (int i=1;i<=n;i++){
    int temp=int.parse(stdin.readLineSync()!);
    a.add(temp);
  }print(a);
  for(int i=0;i<a.length;i++){
    for(int j=0;j<i;j++){
      if(a[j]>a[i]){
        int temp=a[i];
        a[i]=a[j];
        a[j]=temp;
      }
    }
  }print(a);
}