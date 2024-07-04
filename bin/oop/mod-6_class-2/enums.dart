/*const String dhaka = 'Dhaka';
const String khulna = 'Khulna';
const String bhola = 'Bhola';
const String rajshahi = 'Rajshahi';
const String chattagram = 'Chattagram';
 */

enum Division{
  Tangail,
  Jassore,
  Dinajpur,
  Comilla,
  Noakhali
}

void main(){
  String a = 'uyweruy';
  Division myDivision = Division.Comilla;
  /*Division myDiv = Division.Dinajpur;
  Division myDi = Division.Jassore;
  Division myDivis= Division.Noakhali;
  Division myDivi = Division.Tangail;
   */

  print(Division.values);
}