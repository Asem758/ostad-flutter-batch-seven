import 'dart:io';

void main(){
  //try catch
  try {
    //throw MyException();
    //throw SocketException('urit');
    String input = '34   i';
    int parseValue = int.parse(input);
    print(parseValue);
  }
  on MyException{
    print('This is my Exception');
  }
  on SocketException{
    print('This is a Socket Exception');
  }
  on FormatException{
    print('This is a Format Exception');
  }
  catch (e) {
    print(e.toString());
    print('You have faced an runtime error');
  }
  finally{
    print('finally');
  }
  print('Hello World');
}

class MyException implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return 'This is my Exception';
  }
}