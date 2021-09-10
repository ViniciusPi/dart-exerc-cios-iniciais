main(List<String> args) {
  List<int> b = [1, 1, 3, 4, 5, 4, 11, 9, 9, 10, 11, 12, 13];

  b = b.toSet().toList();

  print(b);
}
