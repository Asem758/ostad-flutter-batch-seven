import 'apple_laptop.dart';
import 'computer.dart';
import 'hp_laptop.dart';

// format
// windows: ctrl + alt + l
// Mac: cmd + alt + l

void main(){
  /*Computer macBookPro = Computer
    ('Apple',
    'MacBookPro',
    '2021',
    'M2',
    16,
    'uiwetwori',);
  
  print(macBookPro.getDetails());
  print(macBookPro.macAddress);
  macBookPro.startComputer();
  //macBookPro.startHardwareComponents();
  //macBookPro.startInternalProcess();

   */

  Hplaptop eliteBook = Hplaptop(
      model: 'EliteBook 345kLG',
      processor: 'Intel Core i 5',
      ramInGB: '8',
      year: 2023,
      macAddress: 'uweyrueqi');

  eliteBook.startComputer();
  eliteBook.runGraphicsHPSoftware();
  eliteBook.stopComputer();

  //Polymorphism
  Computer computer = Hplaptop(
      model: 'ProBook',
      processor: 'Core i 7 10Th GEN',
      ramInGB: '8 GB',
      year:  2020,
      macAddress: 'uqryqwryqior');

  computer.stopComputer();
  //computer

  AppleLaptop macBookAir = AppleLaptop('MacBookAir', '2023', 'M2', 8, 'liurkejfhiuq');

  macBookAir.startComputer();
 print(macBookAir.getOSVersion());

}

//Abstraction an be achieved by Encapsulation

