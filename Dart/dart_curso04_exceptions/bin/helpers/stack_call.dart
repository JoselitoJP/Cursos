void stackStart(){
  print("Started Main");
  try {
   functionOne(); 
  } catch(execption, stackTrace){
    print(execption);
    print(stackTrace);
    rethrow;
    //print(stackTrace.toString());
    //print(execption.runtimeType);
  } finally{
    print("Chegou no Final!");
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
    double amount = double.parse("Not  a Number");
    
    /* TODO:Uma forma de tratar o bugging com try on ForatException
    try{
    
    } on FormatException{
      print("A conversão não pôde ser feita!");
    }*/
  }
  print("Finished F02");
}