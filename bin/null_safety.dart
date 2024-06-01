void main(){
  //?, ??, !
  late String university;
  int? myAge = null; // nullable int
  myAge = 30;
  //null
  //print(myAge.runtimeType);
  print(myAge);

  String? myName = null;

  /*if(myName == null){
    print('Hello');
  }else{
    print(myName);
  }
 */
  print(myName ?? 'Hello'); // default or soft unwrap
  print(myName); // force unwrap
  //print(University);

  myName = 'Hasib';
  print(myName);
}