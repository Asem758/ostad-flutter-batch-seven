//Synchronous

import 'dart:async';

void doSomething(){
  print('A');
  print('B');
  print('C');
  print('D');
  print('E');
}

void anotherMethod(){
  print('New A');
  Future.delayed(Duration(seconds: 10)).then((_) {
    print('New B');
    
  });
  print('New C');
}

Future<int> sum(int a, int b) async{
  await Future.delayed(Duration(seconds: 10));
  return a + b;
}

Future<void> main() async{
  //anotherMethod();
  //doSomething();

  int result = await sum(34, 56);
  print(result);
  //print(sum(4, 7));
}

//Asynchronous
//Future result error