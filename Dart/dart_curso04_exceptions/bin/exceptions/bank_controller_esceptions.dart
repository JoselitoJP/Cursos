class SendeIdInavalidExcepitions implements Exception{
  String idSender;
  SendeIdInavalidExcepitions({required this.idSender});
}
class ReceiverIdInvalidException implements Exception{}
class SenderNotAuthenticatedException implements Exception{}
class SenderBalanceLowerThanAmountExceptin implements Exception{}