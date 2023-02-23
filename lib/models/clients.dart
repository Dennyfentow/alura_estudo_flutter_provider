import 'package:client_control/models/client.dart';
import 'package:flutter/widgets.dart';

class Clients extends ChangeNotifier {
  final List<Client> clients;

  Clients({required this.clients});

  Client getClient(int index) {
    if (index > (clients.length - 1)) {
      throw Exception('Index maior que o tamanho da lista');
    }
    return clients[index];
  }

  void addClient(Client client) {
    clients.add(client);
    notifyListeners();
  }

  void removeClientAtIndex(int index) {
    clients.removeAt(index);
    notifyListeners();
  }

  void removeClient(Client client) {
    clients.removeWhere((element) => client.name == element.name);
    notifyListeners();
  }
}
