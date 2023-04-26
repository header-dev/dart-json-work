import 'dart:convert';

void main() {
  var data = {};
  data['id'] = 123;
  data['name'] = 'Witz';
  data['expire'] = false;

  var js = jsonEncode(data);
  print(js);
}
