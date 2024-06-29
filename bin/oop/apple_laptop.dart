import 'computer.dart';

class AppleLaptop extends Computer{
  AppleLaptop(
      //String companyName,
      String model,
      String year,
      String processor,
      int ramInGB,
      String macAddress)
  : super('Apple',
      model,
    processor,
    year,
    ramInGB,
    macAddress
  );

  String getOSVersion(){
    return 'Sonoma';
  }

}