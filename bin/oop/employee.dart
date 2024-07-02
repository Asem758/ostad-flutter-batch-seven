// contaact

abstract class Employee{
  void work();

  void formalDressUp();

  void attendMeting();

  /*void goToOffice(){
    print('Employee is going to Office');
  }

   */

}

class softwareEngineer implements Employee{
  @override
  void attendMeting() {
    print('Attending Important Meeting');
  }

  @override
  void formalDressUp() {
    print('Wearing Shirt and pant');
  }

  @override
  void work() {
    print('Coding');
  }

 /* @override
  void goToOffice() {
    // TODO: implement goToOffice
  }

  */

}

class Marketing implements Employee{
  @override
  void attendMeting() {
    print('Attending marketing Meeting');
  }

  @override
  void formalDressUp() {
    print('Wearing full formal dress ');
  }

  @override
  void work() {
    print('Dealing with the people');
  }

}

void main(){
  Employee Saikat = softwareEngineer();
  Saikat.work();
  Saikat.attendMeting();
  Saikat.formalDressUp();

  Employee Russal = Marketing();
  Russal.work();
  Russal.attendMeting();
  Russal.formalDressUp();
}