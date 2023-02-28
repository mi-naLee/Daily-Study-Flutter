// ================= 비동기 처리 =================
// 네트워크 지연 등으로 값을 반환받지 못한 채 과정이 실행되는 것을 방지
// (지연 발생 중에 멈추지 않고 다른 동작 실행)

// -------- 실행 : main() ---------
void main(){
  check(); // (2) == async
  print("end"); // (1)
}

Future check() async{
  var version = await look();
  // await : 처리를 완료하고 결과 반환할 때까지 이후 코드의 처리를 멈춤
  // --> look() 실행 후에야 print(version) 실행
  print(version);
}

int look(){
  return 100;
}