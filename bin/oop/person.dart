class person {
  String name = '';
  String address = '';
  int age = 0;

// person({required String name, required String address, required int age}){
//     this.name = name;
//     this.address = address;
//     this.age = age;
// }
  person( {required this.name, required this.address, required this.age});

  void printName(){
    print(name);
  }
}

