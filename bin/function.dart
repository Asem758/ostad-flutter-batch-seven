//import 'dart:ffi';

void main(){
  /*print('Take your id');
  print('Take your Test Device');
  print('Take your email');
  print('Take your Data Form');

  print('Take your PC');
  print('Take your  Mobile Phone');
  print('Take your Speaker');
  print('Take your Cash');

   */
  //Argument
  welcomeMassage('Sabbir', 'Dhaka', age: 25);
  welcomeMassage('Iram', 'Barishal', age: 40);
  welcomeMassage('Saiful', 'Rangpur', age: 21);
  welcomeMassage('Sadit', 'Rajshahi', age: 27);
  welcomeMassage('Sadat', 'Bagura', age: 29);
  int r = add(firstNo: 23, secondNo: 56);
  int s = add(secondNo: 78,  firstNo: 45);
  print(s);
  print(r);
}

// return-type function name(Params)
//paarmeters                                //[int age = 0]
welcomeMassage(String name, String address, {int age = 0}){
  print('Take your PC, $name');
  print('Take your  Mobile Phone');
  print('Take your Speaker');
  print('Take your Cash');
}
//int firstNo, int secondNo)

int add({required int firstNo, required int secondNo}){
  //print(firstNo + secondNo);
  int result = firstNo + secondNo;
  return result;
}