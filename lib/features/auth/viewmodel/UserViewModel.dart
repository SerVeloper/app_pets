import 'package:flutter/material.dart';
import '../../../core/models/User.dart';
import '../data/UserService.dart';

class UserViewModel extends ChangeNotifier {
  final UserService _userService = UserService();

  List<User> _users = [];
  bool _isLoading = false;

  List<User> get users => _users;
  bool get isLoading => _isLoading;

  Future<void> fetchUsers() async {
    _isLoading = true;
    notifyListeners();

    try {
      _users = await _userService.getUsers();
    } catch (e) {
      print("Error fetching users: $e");
      _users = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addUser(User user) async {
    await _userService.createUser(user);
    await fetchUsers();
  }

  Future<void> editUser(User user) async {
    await _userService.updateUser(user);
    await fetchUsers();
  }

  Future<void> removeUser(int id) async {
    await _userService.deleteUser(id);
    await fetchUsers();
  }
}
