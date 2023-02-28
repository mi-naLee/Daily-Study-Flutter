
void main() {

  // 클래스 생성
  Car BMW = Car('BMW', 100000, 320);
  Car BENZ = Car('BENZ', 70000, 250);
  Car FORD = Car('FORD', 80000, 200);

  // discount (함수 활용)
  BMW.saleCar();
  BMW.saleCar();
  BMW.saleCar();
  print(BMW.price); // 72900.0
}

// Object - num - 1) int 2) double
// num : num x = 9.0 / num x = 9 모두 가능
class Car {
  // 필드에 late을 추가하지 않으면 생성자에서 error(initialized error)
  late String name;
  late num price;
  late int maxSpeed;

  Car(String name, num price, int maxSpeed){
    this.name = name;
    this.price = price;
    this.maxSpeed = maxSpeed;
  }

  num saleCar(){
    price = price * 0.9; // 10% discount
    return price;
  }
}