import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

main(){
  double a = 4;
  a = a + 1;
  print(a);
  a += 1;
  print(a);
  a++;  // postfix
  print(a);
  print(++a); //PREFIX

  print(a > 5);
  print(a < 5);

  print(a == 8);
  print(a == 8 && a > 10);
  print(a == 8 && a < 10);
  
  print(a == 8 || a == 10);
  print(a == 9 || a == 10);
  
  print(33 / 10);
  print(33 % 8);
  print(33 * 10);
  print(33 + 10);
  print(33 - 10);
  
  print(a--);
  print(a);
  print(--a);

  a += 10;
  print(a);
  a *= 26;
  print(a);
  a /= 5;
  print(a);


}