void main(List<String> args) {
  print('Hello world:5');
  soLonNhat(numbers); // Bài 1
  tinhTongMang(numbers); // Bài 2
  soChan(numbers); // Bài 3
  soNguyenTo(numbers); // Bài 4
  daoNguocMang(numbers); // Bài 5
  mangTangDan(numbers); // Bài 6
}

List<int> numbers = [5, 2, 7, 10, 1, 13, 4];

// Bài 1: số lớn nhất
void soLonNhat(isList) {
  int n = 0;
  for (int i = 0; i < isList.length - 1; i++) {
    if (isList[i] > n) {
      n = isList[i];
    }
  }
  print("Số lớn nhất trong mảng là $n");
}

// Bài 2: Tính tổng các phần tử trong mảng
void tinhTongMang(List) {
  int tong = 0;
  for (int i in List) {
    tong += i;
  }
  print("Tổng các phần tử trong mảng là $tong");
}

// Bài 3: in số chẵn
void soChan(List) {
  print("Dãy các số chẵn trong mảng là");
  for (int i in List) {
    if (i % 2 == 0) print("$i");
  }
}

// Bài 4: số nguyên tố
void soNguyenTo(List) {
  print("Dãy các số nguyên tố trong mảng là");
  for (int i in List) {
    if (i >= 2) {
      bool test = true;
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          test = false;
          break;
        }
      }
      if (test) {
        print("$i");
      }
    }
  }
}

// Bài 5: Đảo ngược mảng
void daoNguocMang(mang) {
  List<int> newList = [];

  for (int i in mang) {
    newList.insert(0, i); // thêm vào index 0
  }
  print("Mảng sau khi được đảo ngược là: $newList");
}

// Bài 6: sắp xếp tăng
void mangTangDan(mang) {
  for (int i in mang) {
    mang.sort();
  }
  print("Mảng sau khi được sắp xếp tăng dần là: $mang");
}
