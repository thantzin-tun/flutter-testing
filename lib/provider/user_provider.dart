import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
    String userName = "Thant Zin Tun";
    void changeName(String newName) {
        userName = newName;
        notifyListeners();
    }

}