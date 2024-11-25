import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'models/account.dart';
import 'exceptions/bank_controller_esceptions.dart';

void testingNullSafety(){
  Account? myAccount = Account(name: "Ricarth", balance: 200, isAuthenticated: true);

  //Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }
  /*else{print(randomNumber);}*/
  print(myAccount.runtimeType);
  //Teste forçado que não funciona
  //print(myAccount.balance);
  print(myAccount.createdAt);
  //print(myAccount.createdAt!.day);
  //Conversão direta: Má prática (print(myAccount!.balance);)

  //Teste usando if-else para conferir a possibilidade nula
  if (myAccount != null) {
    print(myAccount.balance);
    if (myAccount.createdAt != null) {
      print(myAccount.createdAt!.day);
    }
    }else{
      print("Conta nula");
    }

  //Forma compactada de lidar com null com Operador ternário
  //print(myAccount != null ? myAccount.balance : "Conta nula.");

  //Forma mais redusida de lidar com o null (print(myAccount?.balance);)-> o codigo só transforma o Null em objeto printavel 
}

void main() {

  testingNullSafety();

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  //Account accountTest = Account(name: "", balance: 200, isAuthenticated: true);
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
      //print("Transação concluida com sucesso!"); 
    }  
  } on SendeIdInavalidExcepitions catch (e){
    print(e);
    print("O ID '${e.idSender}' do remetente não é um ID válido.");
  } on ReceiverIdInvalidException catch(e){
    print(e);
    print("O ID '${e.idReceiver}' do destinatário não é um ID válido.");
  } on SenderNotAuthenticatedException catch(e){
    print(e);
    print("O usuário remente de ID '${e.idSender}' não está autenticado.");
  } on SenderBalanceLowerThanAmountExceptin catch(e){
    print(e);
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


/*
bool isEmpty(String string) => string.length == 0;
main() {
  isEmpty(null);
}
*/

/*

  //print("MyString".runtimeType);
  //print(null.runtimeType);
  //Null;

  String naoPodeSerNula = "MyString";
  //naoPodeSerNula = null;

  String? podeSerNula = "MyString";
  print(podeSerNula.runtimeType);
  podeSerNula = null;
  print(podeSerNula.runtimeType);

  Account? myNullAccount;
  //print(myNullAccount.balance);


  //assert(2 < 1, "Levantei o Assert");
*/