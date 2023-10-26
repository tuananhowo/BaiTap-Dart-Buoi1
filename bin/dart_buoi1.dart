import 'package:dart_buoi1/dart_buoi1.dart' as dart_buoi1;

void main(List<String> arguments) {
  print('Hello world: ${dart_buoi1.calculate()}!');

  // int number = 25;

  // print("in cái lày ra" + number.toString());

  List<int> testList = [3, 6, 12, 17];
  // Map<int, String> map = {};
  // soChan(testList);
  testSoLe(testList);
}

void soChan(List<int> testList) {
  for (int ab in testList) if (ab % 2 == 0) print("so chan: $ab");
}

void testSoLe(List<int> testList) {
  for (int i = 0; i < testList.length; i++) {
    if (testList[i] % 2 != 0) print("so le: " + testList[i].toString());
  }
}
