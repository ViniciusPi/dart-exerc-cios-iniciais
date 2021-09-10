void main(List<String> args) {
  List<int> a = [1, 1, 2, 3, 4, 5, 6, 3, 3, 3, 3, 3];

  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> c = [];

  for (var i in a) {
    for (var w in b) {
      if (i == w) {
        if (!c.contains(i)) {
          c.add(i);
        }
      }
    }
  }

  print(c);
}
