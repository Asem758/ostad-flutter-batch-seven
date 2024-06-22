abstract class khan {
  void printMyName();
}

class SahrukhKhan extends khan {
  @override
  void printMyName() {
    print('My Name is Khan');
  }

}

class AmirKhan extends khan {
  @override
  void printMyName() {
    print('My Name is AmirKhan');
  }
}

class SalmanKhan extends khan {
  @override
  void printMyName() {
    print('My Name is SalmanKhan');
  }
}

class SaifAliKhan extends khan{
  @override
  void printMyName() {
    print('My name is Saif Ali khan');
  }

}

void main(){
  khan abc = AmirKhan();
  khan SRK = SahrukhKhan();
  khan SK = SalmanKhan();
  khan SA = SaifAliKhan();

  abc.printMyName();
  SRK.printMyName();
  SK.printMyName();
  SA.printMyName();
}