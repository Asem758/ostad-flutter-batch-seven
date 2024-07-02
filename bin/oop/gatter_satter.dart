class Worker{
  String company = 'ARA';
  String designation = 'Software Engineering';
  double _salary = 40000;

  /*double getSalary(){
    return _salary;
  }
  */

  double get Salary{
    return _salary;
  }

  String getDesignation(){
    return designation;
  }

  /*void  setSalary(double newSalary){
    if((newSalary > _salary) && (newSalary < (_salary+5000))) {
      _salary = newSalary;
    }
  }
   */

  void set Salary(double newSalary){
    if((newSalary > _salary) && (newSalary < (_salary+5000))) {
      _salary = newSalary;
    }
  }
}