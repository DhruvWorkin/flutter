import 'dart:io';

class candidate{
  late int candidateID;
  late String candidateName;
  late int candidateAge;
  late double candidateWeight;
  late double candidateHeight;

  void get(candidateID, candidateName, candidateAge, candidateWeight, candidateHeight){
    this.candidateID=candidateID;
    this.candidateName=candidateName;
    this.candidateAge=candidateAge;
    this.candidateWeight=candidateWeight;
    this.candidateHeight=candidateHeight;
  }
  void display(){
    print("Candidate ID : $candidateID");
    print("Candidate Name : $candidateName");
    print("Candidate Age : $candidateAge");
    print("Candidate Weight : $candidateWeight Kg");
    print("Candidate Height : $candidateHeight");
  }
}
void main(){
  candidate one=new candidate();
  one.get(1,"Dhruv",19,70.5,5.5);
  one.display();
}