void main() {
  print("Ola, Mundo! Você esta feliz? ");
//03º aula do Modulo 02 Dart:entenda a Orientção a Objeto
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 40;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);

  mostrarMadura("Uva", 40, cor: "roxa");
 //07º aula do Modulo 02 Dart:entenda a Orientção a Objeto
  int quantosDias = funcQuantosDiasMadura(diasDesdeColheita);
  print(quantosDias);
}

//03º aula do Modulo 03 Dart:entenda a Orientção a Objeto
class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;
}

 int funcQuantosDiasMadura(int dias){
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

mostrarMadura(String nome, int dias, {required String cor/*="Semcor"*/}){ //void estaMadura({String? cor}){}
  //05º aula do Modulo 02 Dart:entenda a Orientção a Objeto

  if (dias >= 30) {
    print("A $nome está madura!");
  } else {
    print("A $nome não está madura!");
  }
/*
  1 - Posicionais Obrigatórios
  2 - Nomeados Opcionais 
  3 - Parâmetros "Padrão"
  4 - Modificador "Required" 
*/
  /*if (cor != null) {
    print("A $nome é $cor");
  }*/

}

bool funcEstaMadura(int dias){
  if(dias >= 30){
    return true;
  }else{
    return false;
  }

}
