class student{
  void goToSchool(){
    print('Go to School');
  }
  
  void Studying(){
    print('Doing home work');
  }
}

abstract  class abs{
  void working(){
  }
}

class universityStudent implements student, abs{
  @override
  void Studying() {
    print('I go to unversity');
  }

  @override
  void goToSchool() {
    print('I am doing Assignment');
  }

  @override
  void working() {
    // TODO: implement working
  }

}

void main(){
  universityStudent shafiq = universityStudent();
  shafiq.Studying();
}