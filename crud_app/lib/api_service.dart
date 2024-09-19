import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = "https://jsonplaceholder.typicode.com/users";

  // Fetch all users
  Future<List<dynamic>> getUsers() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load users');
    }
  }

  // Create a new user
  Future<http.Response> createUser(Map<String, dynamic> user) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {"Content-Type": "application/json"},
      body: json.encode(user),
    );
    return response;
  }

  // Update a user
  Future<http.Response> updateUser(int id, Map<String, dynamic> user) async {
    final response = await http.put(
      Uri.parse('$apiUrl/$id'),
      headers: {"Content-Type": "application/json"},
      body: json.encode(user),
    );
    return response;
  }

  // Delete a user
  Future<http.Response> deleteUser(int id) async {
    final response = await http.delete(
      Uri.parse('$apiUrl/$id'),
      headers: {"Content-Type": "application/json"},
    );
    return response;
  }
}
