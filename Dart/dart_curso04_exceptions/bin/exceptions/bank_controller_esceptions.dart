
class SendeIdInavalidExcepitions implements Exception{
  String idSender;
  SendeIdInavalidExcepitions({required this.idSender});
}
class ReceiverIdInvalidException implements Exception{
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
}
class SenderNotAuthenticatedException implements Exception{
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}
class SenderBalanceLowerThanAmountExceptin implements Exception{
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountExceptin({required this.idSender, required this.senderBalance, required this.amount,});

}