void main(){
  //data-tpe variable name
  //class human
  // class-name instance-name = class-name();

  human anis = human('Akib', 34, 'Chattagram');
  anis.eating('Mango');
  anis.moving();
  anis.talking('Shakib');
  
  human ashrafur = human('Ashrafur Rahman', 24, 'Dhaka');
  print(ashrafur.name);
  print(ashrafur.address);

  Employee asem = Employee('Asem', 'Dhaka', 'Depictzo', 24, 10000);
  asem.goToOffice();
  asem.moving();


  /*String name = 'Anis';
  String address = 'Dhaka';
  int age = 44;

  String name2 = 'Abbas';
  String address2 = 'Dhaka';
  int age2 = 45;

  String name3 = 'Akkas';
  String address3 = 'Dhaka';
  int age3 = 46;

   */
}


class human{
  late String name;
  late String address;
  late int age;

//default constructor
//human(){}

  human(String userName, int userAge, String userAddress){
    print('Creating a new human');
    name = userName;
    age = userAge;
    address = userAddress;
  }


  void moving(){
    //this.name = 'Shafikul';
    print('$name is moving');
  }

  void eating(String name){
    print('${this.name} is eating $name');
  }

  void talking(String talkingwith){
    print('$name is talking with $talkingwith');
  }
}

//Child-Class extends parent-class super-class
class Employee extends human{
  /*late String name;
  late int age;
  late String address;
  */
  late String organization;
  late double salary;


  Employee(
      String employeeName,
      String employeeAddress,
      String employeeOrganization,
      int employeeAge,
      double employeeSalary,
      ) : super(employeeName, employeeAge, employeeAddress){

    /*this.name = employeeName;
    this.address = employeeAddress;
    this.age = employeeAge;
    */
    this.organization = employeeOrganization;
    this.salary = employeeSalary;

  }

  void goToOffice(){
    print('${super.name} Going to Office');
    //eating(name);
}

  /*void moving(){
    //this.name = 'Shafikul';
    print('$name is moving');
  }

  void eating(String name){
    print('${this.name} is eating $name');
  }

  void talking(String talkingwith){
    print('$name is talking with $talkingwith');
  }
   */

  //overriding

  @override
   void moving(){
    super.moving();
     print('Moving with Marcedes');

   }

   /*@override
  void talking(String talkingwith) {
    // TODO: implement talking
    super.talking(talkingwith);
  }

    */


}