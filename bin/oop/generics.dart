/*int sum(int a, int b){
  return a + b;
}
*/

num sum<T extends num>(T a, T b){
  return a + b;
}

String doSomething<T, V>(T a, V b){
  return '$a $b';

}


void printSomething<T>(T something){
  print(something);
}

/*double sumOfDouble(double a, double b){
  return a + b;
}
*/

void main(){
  print(doSomething<String, int>('uyqwr', 873587));
  print(sum<int>(253, 784));
  /*printSomething('yrrkwy');
  printSomething<int>(7485);
  printSomething<double>(2346.64);
  printSomething<bool>(true);
   */
  //print(sum<int>)
  //print(sumOfDouble(56.755, 35.8735));
}