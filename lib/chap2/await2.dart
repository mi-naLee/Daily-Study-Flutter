void main() {
  printA();
  printB();
  printC();
}

void printA() => print("A"); // (1)
void printC() => print("C"); // (2)

void printB() async{
  await Future.delayed(Duration(seconds: 1), () {
    print("B"); // (3)
  });
  print("end"); // (4)
}

