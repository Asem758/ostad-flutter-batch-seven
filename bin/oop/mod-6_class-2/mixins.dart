class A{
  void doNothing(){
    print('DoNothing');
  }
}

class B{
  void anotherUselessMethod(){
    print('Useless shameless People');
  }
}

/*class Worker extends A implements F, E{

}

abstract class F{
  void doNothing(){
    print('DoNothing');
  }
}

abstract class E{
  void doNothing(){
    print('DoNothing');
  }
}
*/

class Worker with F, E{

}

mixin class F{
  void doNothing(){
    print('DoNothing');
  }
}

mixin class E{
  void doNothing(){
    print('DoNothing');
  }
}

void main(){
  Worker work = Worker();
  work.doNothing();
}