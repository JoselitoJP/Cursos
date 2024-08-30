import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';

/*void main() {
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
}*/

void main(){
  print("Started Main");
  try {
   functionOne(); 
  } on FormatException { 
    print("Foi capturada dentro da FunctionOne!");
  }
  print("Finished Main");

}

void functionOne(){
  print("Started F01");
  functionTwo();
  print("Finished F01");
}

void functionTwo(){
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("Not a number");
    
    /* TODO:Uma forma de tratar o bugging com try on ForatException
    try{
    
    } on FormatException{
      print("A conversão não pôde ser feita!");
    }*/
  }
  print("Finished F02");
}