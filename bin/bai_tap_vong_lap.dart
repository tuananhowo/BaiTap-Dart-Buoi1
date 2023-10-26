// import 'package:dart_buoi1/dart_buoi1.dart' as dart_buoi1;
// int? number;
void main(List<String> args) {
  print('Hello world:555');
  ifElse(8); // Bài 1
  switchCase(11); // Bài 2
  tinhGiaiThua(5); // Bài 3.1
  soNguyenLe(25); // Bài 3.2
  inTong(50); // Bài 4
  tinhTongVaIn(15); //Bài 5
}

// Bài 1: cấu trúc if...else
void ifElse(number) {
  if (number % 2 == 0)
    print("$number là số chẵn");
  else
    print("$number là số lẻ");
}

// Bài 2: cấu trúc swich...case
void switchCase(number) {
  switch (number % 2) {
    case 0:
      print("$number là số chẵn");

    default:
      print("$number là số lẻ");
  }
}

// Bài 3: cấu trúc vòng for, for...in
// 3.1: n!
void tinhGiaiThua(n) {
  int number = 1;
  for (int i = 1; i <= n; i++) {
    number = number * i;
  }
  print("Giai thừa của n là $number");
}

// 3.2: số nguyên lẻ < 25
void soNguyenLe(number) {
  print("Dãy số nguyên dương lẻ nhỏ hơn 25");
  for (int i = 1; i < number; i++) {
    if (i % 2 != 0) print("$i");
  }
}

// Bài 4: Cấu trúc while, do... while
void inTong(number) {
  int i = 1;
  int tong = 0;
  print("Dãy số nguyên tổng nhỏ hơn 50");
  do {
    print("$i");
    i++;
    tong += i;
  } while (tong < number);
}

// Bài 5: Tổng hợp
void tinhTongVaIn(number) {
  int n = 0;
  print("Dãy các số chẵn từ 1 đến $number là");
  for (int i = 1; i < number; i++) {
    n += i;
    if (i % 2 == 0) {
      print("$i");
    }
  }
  print("Tổng các số từ 1 đến $number là $n");
}
