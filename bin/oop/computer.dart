abstract class Computer{
  String companyName;
  String model;
  String year;
  String processor;
  int ramInGB;
  String macAddress;

  Computer(
      this.companyName,
      this.model,
      this.year,
      this.processor,
      this.ramInGB,
      this.macAddress,
      );

  String getDetails(){
    return 'Company Name: $companyName\n Model: $model';
  }

  void startComputer(){
    _startHardwareComponents();
    _startInternalProcess();

  }

  void _startHardwareComponents(){}
  void _startInternalProcess(){}

  void stopComputer(){
    _stopHardwareComponents();
    _stopInternalProcess();
  }

  //Encapsulation -- Hiding method
  void _stopHardwareComponents(){}
  void _stopInternalProcess(){}

}