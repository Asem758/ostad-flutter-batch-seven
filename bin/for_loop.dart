void main(){
  //loop
  //for, while , do-while
  //for-loop
  //Start: Condition: Increment/Decrement
  //Initialization: Condition: Increment/Decrement

  /*for(int i = 0; i <= 10; i = i + 1){
    //body
    if(i == 5){
      continue;
    }
    if(i == 8){
      break;
    }
    print(i);
    greeting();
  }
  int h = 1;
  while( h >= 1){
    print(h);
    h++;
  }

   */

  List<String> students = [
    'Arif',
    'Sajib',
    'Kabir',
    'Abbas',
    'Zakir'
  ];
  for(int j = 0; j < students.length; j++){
    print('Student $j: ${students[j]}');
  }
  
  //For in
  for(String student in students){
    print('Student name is: $student');
  }
  //For each
  students.forEach((stu) {
    print(stu);
  });

  //Map for loop
  Map<String, Map<String, String>> friends = {
    'Iram':{
      'Address':'Barishal',
      'Age': '30',
      'City': 'Dhaka'
    },
    'Akram':{
      'Address': 'Rangpur',
      'Age': '40',
      'City': 'Dhaka'
    },
    'Rafiq':{
      'Address': 'Rajshahi',
      'Age': '25',
      'City': 'Dhaka'
    },
    
  };

  for(String key in friends.keys){
    //print(friends[key]);
    print('My Friend name is: $key. Address: ${friends[key]! ['Address']}. Age: ${friends[key]! ['Age']}');

  }

  for(Map<String, String> details in friends.values){
    print(details);
  }
  
}

/*void greeting(){
  print('Welcome to home');
  print('Do you wanna take some Tea/Cofee?');
  print('Good Bye');
}

 */