void main(){

  // Future myfuture = Future((){
  //   print('Going back to the Future');
  //   return 21;
  // }).then((value) => print('The value is $value'));

  Future <int> myFutureFunc()async{
    print('I have a function in the Future');
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 12 ;
  }

  // myFutureFunc()
  // .then((value) => print('My function value is: $value'))
  // .onError((error, stackTrace) => print('An Error occurred'))
  // .whenComplete(() => print('The Future is Over'));

  Future<int> myFutureErrorFunc(int a, int b) async{
    try {
      if(a>b){
        throw Exception();
      }
      print('I have a functional Function');
      await Future.delayed(Duration(seconds: 5));
      return 42; 
    } catch (e) {
      print('An error occourred: $e');
      return 42;
    }finally{
      print('The Future is Over');
    }
  }

  myFutureErrorFunc(2, 1).then((value) => print('The value is: $value'));
  print('Done with main');
}