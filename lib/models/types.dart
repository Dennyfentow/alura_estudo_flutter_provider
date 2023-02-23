import 'package:client_control/models/client_type.dart';
import 'package:flutter/material.dart';

class Types extends ChangeNotifier {
  final List<ClientType> types;

  Types({required this.types});

  ClientType getType(int index) {
    return types[index];
  }

  void addType(ClientType type) {
    types.add(type);
    notifyListeners();
  }

  void removeTypeAt(int index) {
    types.removeAt(index);
    notifyListeners();
  }
}
