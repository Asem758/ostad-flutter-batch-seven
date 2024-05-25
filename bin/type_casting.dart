main(){
  double value = 45.8;
  int a = value.toInt();
  //a = int.parse(value.toString());
  //print(a);

  value = a.toDouble();
  print(value);
  String x = a.toString();
  print(x.runtimeType);
  x = value.toString();

  String numValue = '56';
  int id = int.parse(numValue);
  print(id.runtimeType);

  String gpa = '3.78';
  double g = double.parse(gpa);
  print(g);
}