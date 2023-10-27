void main() {
  tinhTongChan(1000); // Bài 1
  chiaHet(10000, 3); // Bài 2
  chiaHet(10000, 5); // Bài 2
  tinhTong(numbers, 3); // Bài 3
  tinhTongTuoi(scores); // Bài 4
  timChuoi(classInformation); // Bài 5
}

// Bài 1: in tổng số chẵn
void tinhTongChan(int number) {
  int sum = 0;
  for (int i = 2; i <= number; i += 2) {
    print("$i");
    sum += i;
    if (sum + i >= 400) {
      break;
    }
  }
}

// Bai 2: chia hết 3_5
void chiaHet(int daySo, int soCanChia) {
  int demSo = 0;
  for (int i = 1; i <= daySo; i++) {
    if (i % soCanChia == 0) {
      demSo++;
    }
  }
  print("Có $demSo số chia hết cho $soCanChia");
}

// Bài 3: in tổng chia hết
List<int> numbers = [4, 3, 10, 9, 15, 7, 6, 5, 8];
void tinhTong(List<int> array, soCanChia) {
  int sum = 0;
  for (int i in array) {
    if (i % soCanChia == 0) {
      sum += i;
    }
  }
  print("Tổng các số chia hết cho $soCanChia là $sum");
}

// Bài 4: tính tổng tuổi
Map<String, int> scores = {'John': 80, 'Alice': 90, 'Bob': 75, 'Eve': 85};
void tinhTongTuoi(Map<String, int> listOld) {
  dynamic sumOld = 0;
  for (String i in listOld.keys) {
    dynamic value = listOld[i];
    sumOld += value;
  }
  print("Tổng số tuổi của 4 người là $sumOld");
}

// Bài 5: In số hotline
var classInformation = {
  "id": 12,
  "name": "Công ty cổ phần Lumi Việt Nam",
  "description":
      "Showroom Lumi số 38 Đỗ Đức Dục, Nam Từ Liêm, Hà Nội. Hotline: 09034989191"
};
// Tham khảo
void timChuoi(Map<String, dynamic> classInformationInfo) {
  String description = classInformationInfo["description"];
  RegExp hotlineSearch = RegExp(r'(\d{8,})');
  // đặt biểu thức chính quy tìm kiếm 8 số liên tiếp

  Iterable<Match> matches = hotlineSearch.allMatches(description);
  // lấy kết quả khớp của bt chính quy trong description
  // Lưu kết quả trong danh sách có kiểu Iterable<Match>

  if (matches.isNotEmpty) {
    // kiểm tra xem có phần tử nào trong danh sách kết quả khớp không
    dynamic hotline = matches.first.group(0);
    // first_truy cập giá trị khớp đầu tiên
    // group(0) _ lấy toàn bộ chuỗi khớp đầu tiên đó
    print("Số hotline: $hotline");
  }
}
