import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 700);

  // Observando resultado
  print(result);
}

/*
void main(){
  //double amount = double.parse("source");
  throw FormatException();
}

  try {testFunc();} on Exception catch (e) {print(e.runtimeType);}
  //throw Account(name: "Ricarth", balance: 200, isAuthenticated: true);
  print("Nunca chegará em mim!");
}
void testFunc(){throw "Ricarth";//throw Account(name: "Ricarth", balance: 200, isAuthenticated: true);}*/