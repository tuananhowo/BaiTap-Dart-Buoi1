void main() {
  soLonNhat(numbers); // Bài 1
  tinhTongMang(numbers); // Bài 2
  soChan(numbers); // Bài 3
  soNguyenTo(numbers); // Bài 4
  daoNguocMang(numbers); // Bài 5
  mangTangDan(numbers); // Bài 6
}

List<int> numbers = [5, 2, 7, 10, 1, 13, 4];

// Bài 1: số lớn nhất
void soLonNhat(List<int> list) {
  int n = 0;
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > n) {
      n = list[i];
    }
  }
  print("Số lớn nhất trong mảng là $n");
}

// Bài 2: Tính tổng các phần tử trong mảng
void tinhTongMang(List<int> list) {
  int tong = 0;
  for (int i in list) {
    tong += i;
  }
  print("Tổng các phần tử trong mảng là $tong");
}

// Bài 3: in số chẵn
void soChan(List<int> list) {
  print("Dãy các số chẵn trong mảng là");
  for (int i in list) {
    if (i % 2 == 0) print("$i");
  }
}

// Bài 4: số nguyên tố
void soNguyenTo(List<int> list) {
  print("Dãy các số nguyên tố trong mảng là");
  for (int i in list) {
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
void daoNguocMang(List<int> array) {
  List<int> newArray = [];

  for (int i in array) {
    newArray.insert(0, i); // thêm vào index 0
  }
  print("Mảng sau khi được đảo ngược là: $newArray");
}

// Bài 6: sắp xếp tăng
void mangTangDan(List<int> array) {
  array.sort();
  print("Mảng sau khi được sắp xếp tăng dần là: $array");
}
