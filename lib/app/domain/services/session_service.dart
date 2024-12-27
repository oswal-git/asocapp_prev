import 'package:asocapp/app/domain/services/services.dart';
import 'package:flutter/material.dart';

class UserMessages {
  final String text;
  final String date;
  bool isRead;

  UserMessages({
    required this.text,
    required this.date,
    this.isRead = false,
  });
}

class SessionService extends ChangeNotifier {
  SessionService._internal();
  static final SessionService _instance = SessionService._internal();

  factory SessionService() {
    return _instance;
  }

  final StorageService storage = StorageService();

  bool _thereIsInternetconnection = false;
  bool get thereIsInternetconnection => _thereIsInternetconnection;
  set thereIsInternetconnection(bool value) {
    _thereIsInternetconnection = value;
    notifyListeners();
  }

  bool _isLogin = false;
  bool get isLogin => _isLogin;
  set isLogin(bool value) {
    _isLogin = value;
    notifyListeners();
  }
}
