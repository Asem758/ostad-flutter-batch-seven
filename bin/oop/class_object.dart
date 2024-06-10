//Class Name of Class

class Monitor{
  //Attributes, Properties

  /*String companyName = 'SAMSUNG';
  String model = 'A51';
   */
  static const String sample = 'Sample-Data';
  static const String abc = 'ABC';
  String companyName = '';
  String model = '';

  Monitor(String companyName, String model){
    /*print('Object Created');
    print(companyName);
    print(model);
    print(this.companyName);
    print(this.model);
     */

    this.companyName = companyName;
    this.model = model;
  }


    void printModelName(){
      //print(companyName);
      print(model);
  }

  static String getSampleData(){
    return 'dummy';
  }

  //String _internalHardwareNo = 'uyrykru9009';

    /*int calculatePixel(){
      return 89495958 * 654362;
    }
 */


}
