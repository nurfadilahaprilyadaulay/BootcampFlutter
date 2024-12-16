import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://reqres.in/api";

  // Get data (Fetch Users)
  Future<List<dynamic>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users?page=1'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['data']; // Ambil field "data" dari respon JSON
    } else {
      throw Exception("Failed to load users");
    }
  }
}
