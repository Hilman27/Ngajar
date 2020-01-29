import 'dart:async';

Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {    
    sum += value; //1,3,6,10,15,21,28,36,45,55
    print("SumStream $value sum : $sum");
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    await Future.delayed(Duration(seconds: 3), () => 'Large Latte');
    print("CountSteam $i");
    yield i;
  }
}

main() async {
  var stream = countStream(9);
  var sum = await sumStream(stream);
  print(sum); // 55
  
}
