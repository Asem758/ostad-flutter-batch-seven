import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:crud_app/services/api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiService apiService = ApiService();
  List<dynamic> users = [];
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  // Fetch users from API
  void fetchUsers() async {
    try {
      final fetchedUsers = await apiService.getUsers();
      setState(() {
        users = fetchedUsers;
      });
    } catch (e) {
      print(e);
    }
  }

  // Create a new user
  void createUser() async {
    final user = {
      'name': nameController.text,
      'email': emailController.text,
    };

    final response = await apiService.createUser(user);
    if (response.statusCode == 201) {
      Fluttertoast.showToast(msg: "User created successfully!");
      fetchUsers();
    } else {
      Fluttertoast.showToast(msg: "Failed to create user");
    }
  }

  // Update an existing user
  void updateUser(int id) async {
    final user = {
      'name': nameController.text,
      'email': emailController.text,
    };

    final response = await apiService.updateUser(id, user);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: "User updated successfully!");
      fetchUsers();
    } else {
      Fluttertoast.showToast(msg: "Failed to update user");
    }
  }

  // Delete a user
  void deleteUser(int id) async {
    final response = await apiService.deleteUser(id);
    if (response.statusCode == 200) {
      Fluttertoast.showToast(msg: "User deleted successfully!");
      fetchUsers();
    } else {
      Fluttertoast.showToast(msg: "Failed to delete user");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CRUD App with API"),
      ),
      body: Column(
        children: [
          // Input form for name and email
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                  ),
                ),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => createUser(),
                  child: Text("Create User"),
                ),
              ],
            ),
          ),
          // Display list of users
          Expanded(
            child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(users[index]['name']),
                  subtitle: Text(users[index]['email']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () {
                          nameController.text = users[index]['name'];
                          emailController.text = users[index]['email'];
                          updateUser(users[index]['id']);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          deleteUser(users[index]['id']);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
