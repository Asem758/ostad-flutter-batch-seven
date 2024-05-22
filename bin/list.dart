main(){
  //List<Type_of_data> variable-name = ['Asem', 'Ashrafur'];

  List<String>studentList = ['Asem', 'Kabir'];
  print(studentList);
  //add
  studentList.add('Raisul');
  studentList.add('asuf');
  studentList.add('jueuah');
  studentList.add('usaf');

  print(studentList);

//addAll
  studentList.addAll(['daif', 'jaifak', 'Rock', 'John Cena']);
  print(studentList);

  //remove
  studentList.remove('daif');

  //index
  print(studentList[4]);
  print(studentList[2]);
  //length
  print(studentList.length);
  print(studentList.first);
  print(studentList.last);
  print(studentList.elementAt(3));

  //insert
  studentList.insert(1, 'Rafiq');
  print(studentList);
  studentList.insertAll(3, ['Jabbar', 'Barkat', 'Salam']);
  print(studentList);

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

}