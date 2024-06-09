import 'dart:mirrors';

import 'class_object.dart';

//Encapsulation Concept


void main(){
  // Instance/Object: ClassName object-name = className();

  Monitor myMonitor = Monitor('SAMSUNG', 'MK37689238');
  print(myMonitor.companyName);
  print(myMonitor.model);

  Monitor hasanMonitor = Monitor('Apple', '15Pro Max');
  //hasanMonitor.model = 'MK400';
  //print(hasanMonitor.model);

  hasanMonitor.printModelName();
  hasanMonitor.companyName = 'NOKIA';
  print(hasanMonitor.companyName);
  //hasanMonitor.companyName;


  //hasanMonitor.printModelName();


  //This is private. If we use underscore then it will be private
  //hasanMonitor._internalHardwareNo;
}