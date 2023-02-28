// Dart는 하나의 Thread로 동작하는 언어

void main(){
  printOne();
  printTwo();
  printThree();
}

void printOne(){
  print("원"); // (1)
}

void printThree(){
  print("쓰리"); // (3)
}

void printTwo() async{ // async : delayed를 기다리지 않고 print("투") 먼저 실행

  Future.delayed(Duration(seconds: 1), () { // Duration 시간 동안 delayed
    print("끝!"); //(4)
  });
  print("투"); // (2)
}