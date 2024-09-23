import '../models/account.dart';
import '../exceptions/bank_controller_esceptions.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {
    // Verificar se ID de remetente é válido
    if (!verifyId(idSender)) {
      //return false;
      throw SendeIdInavalidExcepitions(idSender: idSender);
    }

    // Verificar se ID de destinatário é válido
    if (!verifyId(idReceiver)) {
      //return false;
      throw ReceiverIdInvalidException();
    }

    Account accountSender = _database[idSender]!;
    Account accountReceiver = _database[idReceiver]!;

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      //return false;
      throw SenderNotAuthenticatedException();
    }

    // Verificar se o remetente possui saldo suficiente
    if (accountSender.balance < amount) {
      //return false;
      throw SenderBalanceLowerThanAmountExceptin();
    }

    // Se tudo estiver certo, efetivar transação
    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
