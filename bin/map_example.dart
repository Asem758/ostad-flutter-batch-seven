main(){

  //Mapping => latlng -> Address
  //Key(Unique) : Value(Not Unique)

  Map<int, String> studentList = {
    40: 'barkat',
    1: 'raisul',
    2: 'baoist',
    3: 'karimul',
    4: 'Rafiqul',
    1: 'Asem'
  };

  print(studentList);
  print(studentList[3]);

  //Key upadte
  studentList[2] = 'Steven';
  print(studentList);

  print(studentList.isEmpty);
  print(studentList.isNotEmpty);
  print(studentList.length);
  print(studentList.containsKey(34));
  print(studentList.containsValue('karimul'));

  studentList.addAll({
    32 : 'srfat',
    67: 'Afkat',
  });
  print(studentList);

  print(studentList.keys);
  print(studentList.values);

  print(studentList);

  studentList.remove(2);
  print(studentList);

  //studentList.clear();
}