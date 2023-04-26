import 'dart:convert';

void main() {
  var jsonStr = '{"name" : "witz", "age": 33}';
  var map = jsonDecode(jsonStr);
  /*
  Map<String, dynamic> map = jsonDecode(jsonStr);
  */

  print('name : ${map['name']}');
  print('age : ${map['age']}');

  var jsonStr2 = '''{
    "name" : "Witz",
    "age" : 52,
    "children": ["Mod", "Witz", "Bios"]
  }''';

  var map2 = jsonDecode(jsonStr2) as Map<String, dynamic>;
  print("name : ${map2['name']}");
  print("children : ${map2['children']}");

  print("first child: ${map2['children'][0]}");

  var children = map2['children'];
  for (String c in children) {
    print(c);
  }

  var products = '''[
    {"name" : "Witz", "storage" : "64GB", "price" : 30000},
    {"name" : "Mod", "storage" : "256GB", "price" : 76000},
    {"name" : "Test2", "storage" : "128GB", "price" : 36000}
  ]''';

  var listMap = jsonDecode(products) as List<dynamic>;
  print(listMap[1]);

  for (var item1 in listMap) {
    print(item1['name']);
  }
}
