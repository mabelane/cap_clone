import 'package:http/http.dart' as http;

Future<bool> checkClientExists(String phoneNumber) async {
  final Uri url = Uri.parse('http://localhost:5028/api/client/phoneNumber');
  final http.Response response = await http.get(url);
  return response.statusCode == 200;
}
