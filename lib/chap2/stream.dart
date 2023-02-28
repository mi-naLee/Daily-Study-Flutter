// ============ Stream =============
// -- 데이터를 순서대로 주고받아야 할 때 사용
// -- 처음에 넣은 데이터가 꺼낼 때도 가장 먼저 나오는 구조
// -- 서버에서 데이터 변경될 때 화면을 새로 고침하지 않아도 자동으로 변경된 데이터 반영

Future<int> sumStream(Stream<int> stream) async{
  var sum = 0;
  await for(var value in stream) {
    print('sum : $value');
    sum += value;
  }
  return sum;
}

// async* : yield를 통해 지속적으로 데이터 전달
// yield : 반환 후에도 계속 함수 유지
Stream<int> countStream(int to) async*{
  for (int i=1; i<= to; i++){
    print('count : $i');
    yield i;
  }
}

void main() async{
  var stream = countStream(10); // count 출력
  var sum = await sumStream(stream); // sum 출력
  print(sum); // 55
}