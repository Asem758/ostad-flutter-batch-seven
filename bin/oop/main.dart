//import 'dart:mirrors';

import 'class_object.dart';
import 'gatter_satter.dart';
import 'person.dart';

//Encapsulation Concept


void main(){
  // Instance/Object: ClassName object-name = className();

  /*Monitor myMonitor = Monitor('SAMSUNG', 'MK37689238');
  print(myMonitor.companyName);
  print(myMonitor.model);

  Monitor hasanMonitor = Monitor('Apple', '15Pro Max');
  //hasanMonitor.model = 'MK400';
  //print(hasanMonitor.model);

  hasanMonitor.printModelName();
  hasanMonitor.companyName = 'NOKIA';
  print(hasanMonitor.companyName);
  print(Monitor.sample);
  print(Monitor.getSampleData());
  print(Monitor.abc);


  //hasanMonitor.companyName;


  //hasanMonitor.printModelName();


  //This is private. If we use underscore then it will be private
  //hasanMonitor._internalHardwareNo;
   */

  /*person shakib = person(name: 'Shakib Al Hasan', address: 'Dhaka', age: 36);
  shakib.printName();
   */

  Worker Shamsul = Worker();
  Shamsul.company;
  Shamsul.designation;
  print(Shamsul.Salary);

  //Shamsul.getDesignation();

  //setter Method with Keyword
  Shamsul.Salary = 50000;
  print(Shamsul.Salary);
}