import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'exceptions/bank_controller_esceptions.dart';

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
          //Account(name: "Caio Couto", balance: 600, isAuthenticated: false));

  // Fazendo transferência
  try{
    bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 700);
      //idSender: "Kako", idReceiver: "Ricarth", amount: 50);
      //idSender: "Kako222", idReceiver: "Ricarth", amount: 50);
      //idSender: "Kako", idReceiver: "Ricarth333", amount: 700);
    
    // Observando resultado print(result);
    if (result) {
      print("Transação concluida com sucesso!"); 
    }  
  } on SendeIdInavalidExcepitions catch (e){
    print("O ID '${e.idSender}' do remetente não é um ID válido.");
  } on ReceiverIdInvalidException catch(e){
    print("O ID '${e.idReceiver}' do destinatário não é um ID válido.");
  } on SenderNotAuthenticatedException catch(e){
    print("O usuário remente de ID '${e.idSender}' não está autenticado.");
  } on SenderBalanceLowerThanAmountExceptin catch(e){
    print("O usuário de ID '${e.idSender}' tentou enviar ${e.amount} sendo que na sua conta tem apenas ${e.senderBalance}.");
  } on Exception{
    print("Algo deu Errado");
  }
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