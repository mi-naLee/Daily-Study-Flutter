// ============ Lotto =============

import 'dart:collection'; // HashSet
import 'dart:math' as math; // Random

void main() {

  var rand = math.Random();
  HashSet<int> lotto = HashSet(); // Set : 중복 제거

  while(lotto.length < 6){
    lotto.add(rand.nextInt(45)+1); // rand.nextInt(int max)
  }
  print(lotto);
}