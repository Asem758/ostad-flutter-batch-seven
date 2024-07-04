//Reactive Programming(RxDart, StreamController, Stream

import 'dart:async';

Stream <int> returnNumber() async*{
  //Future.delayed(Duration(seconds: 3));

  for(int i = 0; i<10; i++){
    await Future.delayed(Duration(seconds: 3));
    yield i;
  }
}

Future <void> main() async{
  //print(await returnNumber().first);

  //StreamController streamController = StreamController();
  await returnNumber().listen((value) { 
    print(value);
  });
}