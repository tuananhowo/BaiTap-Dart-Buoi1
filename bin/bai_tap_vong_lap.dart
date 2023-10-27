// import 'package:dart_buoi1/dart_buoi1.dart' as dart_buoi1;
// int? number;
void main(List<String> args) {
  print('Hello world:555');
  chanLeIfElse(8); // Bài 1
  chanLeSwitchCase(11); // Bài 2
  tinhGiaiThua(5); // Bài 3.1
  soNguyenLe(25); // Bài 3.2
  printSum(50); // Bài 4
  sumAndPrint(15); //Bài 5
}

// Bài 1: cấu trúc if...else
void chanLeIfElse(int number) {
  if (number % 2 == 0) {
    print("$number là số chẵn");
  } else {
    print("$number là số lẻ");
  }
}

// Bài 2: cấu trúc swich...case
void chanLeSwitchCase(int number) {
  switch (number % 2) {
    case 0:
      print("$number là số chẵn");

    default:
      print("$number là số lẻ");
  }
}

// Bài 3: cấu trúc vòng for, for...in
// 3.1: n!
void tinhGiaiThua(int number) {
  int giaiThua = 1;
  for (int i = 1; i <= number; i++) {
    giaiThua = giaiThua * i;
  }
  print("Giai thừa của n là $giaiThua");
}

// 3.2: số nguyên lẻ < 25
void soNguyenLe(int number) {
  print("Dãy số nguyên dương lẻ nhỏ hơn 25");
  for (int i = 1; i < number; i++) {
    if (i % 2 != 0) print("$i");
  }
}

// Bài 4: Cấu trúc while, do... while
void printSum(int number) {
  int i = 1;
  int sum = 0;
  print("Dãy số nguyên tổng nhỏ hơn 50");
  do {
    print("$i");
    i++;
    sum += i;
  } while (sum < number);
}

// Bài 5: Tổng hợp
void sumAndPrint(int number) {
  int sum = 0;
  print("Dãy các số chẵn từ 1 đến $number là");
  for (int i = 1; i < number; i++) {
    sum += i;
    if (i % 2 == 0) {
      print("$i");
    }
  }
  print("Tổng các số từ 1 đến $number là $sum");
}
