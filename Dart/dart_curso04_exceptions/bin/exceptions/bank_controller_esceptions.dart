
class SendeIdInavalidExcepitions implements Exception{
  static const String report = "SenderIdInvaliderException";
  String idSender;
  SendeIdInavalidExcepitions({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender: $idSender";
  }

}
class ReceiverIdInvalidException implements Exception{
  static const String report = "ReceiverIdInvalidException";
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString(){
    return "$report\nID Receiver: $idReceiver";
  }

}
class SenderNotAuthenticatedException implements Exception{
  static const String report = "SenderNotAuthenticatedException";
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString(){
    return "$report\nID Sender: $idSender";
  }
}
class SenderBalanceLowerThanAmountExceptin implements Exception{
  static const String report = "SenderBalanceLowerThanAmountExceptin";
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountExceptin({required this.idSender, required this.senderBalance, required this.amount,});

  @override
  String toString(){
    return "$report\nID Sender: $idSender\n Sender Balance: $senderBalance\n Amount: $amount";
  }

}