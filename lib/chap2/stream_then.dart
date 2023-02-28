main() {
  var stream = Stream.fromIterable([1,2,3,4,5]);

  // 각각 실행하지 않으면 오류 발생(Stream 사용하면 데이터가 사라짐)
  //stream.first.then((value) => print('first: $value')); // 1
  //stream.last.then((value) => print('last: $value')); // 5
  //stream.isEmpty.then((value) => print('isEmpty: $value')); // false
  //stream.length.then((value) => print('length: $value')); // 5
}
