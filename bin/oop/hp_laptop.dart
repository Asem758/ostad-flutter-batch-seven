import 'computer.dart';

class Hplaptop extends Computer{

  Hplaptop({required String model,
      required String processor,
      required ramInGB,
      required year,
      required macAddress})
      : super('HP', model, processor, ramInGB, year, macAddress);


  /*Hplaptop(
      //super.companyName,
      super.model,
      super.year,
      super.processor,
      super.ramInGB,
      super.macAddress,
      ) : super('', '', '', '', 0, '');

   */

void runGraphicsHPSoftware(){
  print('Running Hp Graphics');
}

}