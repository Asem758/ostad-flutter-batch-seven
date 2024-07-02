/*int sum(int a, int b){
  return a + b;
}
*/

num sum<T extends num>(T a, T b){
  return a + b;
}

/*double sumOfDouble(double a, double b){
  return a + b;
}
*/

void main(){
  print(sum(253, 784));
  //print(sumOfDouble(56.755, 35.8735));
}