import 'package:dart_test/dart_test.dart' as dart_test;

void main(List<String> arguments) {
  print(meeting(
      'egan:Wahl;Alexis:Arno;Alex:Wahl;Grace:STAN;Amber:Kern;Amandy:Schwarz;Alissa:Stan;Paul:Kern;Ann:Meta;Lewis:Burroughs;Andrew:Bell'));
}

String meeting(String s) {
  List a, b = [];
  String str = '';
  a = s.split(';');
  a.forEach((element) {
    b.add('(' +
        element.toString().split(':').reversed.join(', ').toUpperCase() +
        ')');
  });
  b.sort();
  b.forEach((element) {
    str = str + element.toString();
  });
  return str;
}
