// ========== 비동기 함수의 반환 값 ==========

void main() async{
  await getName().then((value) => {print(value)}); // (1)
  // await : rtn까지 이후의 진행을 멈춘다.
  print('end'); // (2)
}

Future<String> getName() async{
  var name = await searchName();
  return name;
}

String searchName() {
  return '이름';
}