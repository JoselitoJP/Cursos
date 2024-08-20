void main() {
  print("Ola, Mundo! Você esta feliz? ");
//03º aula do Modulo 02 Dart:entenda a Orientção a Objeto
  String nome = "Laranja";
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Doce e Cítrica";
  int diasDesdeColheita = 20;
  bool isMadura = funcEstaMadura(diasDesdeColheita);

  print(isMadura);

  mostrarMadura("Uva", 40, cor: "roxa");
}

/*
  1 - Posicionais Obrigatórios
  2 - Nomeados Opcionais 
  3 - Parâmetros "Padrão"
  -Modificador "Required" 
*/

//04º aula do Modulo 02 Dart:entenda a Orientção a Objeto

mostrarMadura(String nome, int dias, {required String cor/*="Semcor"*/}){ //void estaMadura({String? cor}){}
  if (dias >= 30) {
    print("A $nome está madura!");
  } else {
    print("A $nome não está madura!");
  }

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
