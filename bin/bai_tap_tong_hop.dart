void main(List<String> args) {
  // print("hel");
  tinhTongChan(1000); // Bài 1
  chiaHet(3, 10000); // Bài 2
  chiaHet(5, 10000); // Bài 2
  tinhTong(numbers, 3); // Bài 3
  tinhTongTuoi(scores); // Bài 4
  timChuoi(classInformation);
}

// Bài 1: in tổng số chẵn
void tinhTongChan(number) {
  int i = 1;
  int tong = 0;
  while (tong + i <= 400) {
    // trừ đi 1 lần i++ cuối
    {
      if (i % 2 == 0) {
        print("$i");
        tong += i;
      }
      i++;
    }
  }
  ;
}

// Bai 2: chia hết 3_5
void chiaHet(int a, int n) {
  int tinh = 0;
  for (int i = 1; i <= n; i++) {
    if (i % a == 0) {
      tinh++;
    }
  }
  print("Có $tinh số chia hết cho $a");
}

// Bài 3: in tổng chia hết
List<int> numbers = [4, 3, 10, 9, 15, 7, 6, 5, 8];
void tinhTong(mang, a) {
  int tong = 0;
  for (int i in mang) {
    if (i % a == 0) {
      tong += i;
    }
  }
  print("Tổng các số chia hết cho $a là $tong");
}

// Bài 4: tính tổng tuổi
Map<String, int> scores = {'John': 80, 'Alice': 90, 'Bob': 75, 'Eve': 85};
void tinhTongTuoi(Map<String, int> inMap) {
  dynamic tong = 0;
  for (String i in inMap.keys) {
    dynamic value = inMap[i];
    tong += value;
  }
  print("Tổng số tuổi của 4 người là $tong");
}

// Bài 5: In số hotline
var classInformation = {
  "id": 12,
  "name": "Công ty cổ phần Lumi Việt Nam",
  "description":
      "Showroom Lumi số 38 Đỗ Đức Dục, Nam Từ Liêm, Hà Nội. Hotline: 09034989191"
};
// Tham khảo
void timChuoi(Map<String, dynamic> theID) {
  String theKey = theID["description"];
  RegExp hotline = RegExp(r'(\d{8,})'); // biểu thức chính quy _ 8 số liên tiếp
  Iterable<Match> matches =
      hotline.allMatches(theKey); // Iterable _ danh sách kết quả
  // allMatches_lấy kết quả từ hotline trong theKey
  if (matches.isNotEmpty) {
    // có phần tử nào ko
    dynamic hotline = matches.first.group(0); // gán giá trị đầu tiên tìm dc
    print("Số hotline: $hotline");
  }
}
