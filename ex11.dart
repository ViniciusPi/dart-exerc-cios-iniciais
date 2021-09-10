void main(List<String> args) {
  List<int> a = [5, 10, 15, 20, 25, 32, 222, 75];

  List<int> listaFinal = extremos(a);

  print(listaFinal);
}

List<int> extremos(List a) {
  List<int> pontas = [];

  pontas.add(a[0]);
  pontas.add(a[a.length - 1]);

  return pontas;
}
