main(){
  /*List<String>studentList = ['Asem', 'Kabir'];
  print(studentList);
  //add
  studentList.add('Raisul');
  studentList.add('asuf');
  studentList.add('jueuah');
  studentList.add('usaf');

  print(studentList);
  studentList.insert(1, 'Rafiq');
  print(studentList);
  studentList.insertAll(3, ['Jabbar', 'Barkat', 'Salam']);
  print(studentList);
*/
  Set<String>studentL = {};
  studentL.add('Solayman');
  studentL.add('Barkat');
  studentL.add('Salm');
  studentL.add('Bark');
  studentL.add('Sala');
  studentL.add('Bark');
  studentL.add('Salam');

  print(studentL);

  studentL.addAll({'taiftr', 'daiht'});
  print(studentL);
  
  studentL.remove('Sala');
  print(studentL);

  studentL.removeAll(['barkat', 'bark']);
  print(studentL);

  print(studentL.elementAt(2));
  print(studentL.length);
  print(studentL.isEmpty);
  print(studentL.isNotEmpty);

  studentL.clear();
  print(studentL);

}