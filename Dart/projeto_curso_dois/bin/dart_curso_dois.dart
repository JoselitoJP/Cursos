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
}

/*
  -Posicionais Obrigatórios
  -Nomeados Opcionais 
  -Parâmetros "Padrão"
  -Modificador "Required" 
*/

//04º aula do Modulo 02 Dart:entenda a Orientção a Objeto

mostrarMadura(String nome, int dias){ //void estaMadura(){}
  if (dias >= 30) {
    print("A $nome está madura!");
  } else {
    print("A $nome não está madura!");
  }
}

bool funcEstaMadura(int dias){
  if(dias >= 30){
    return true;
  }else{
    return false;
  }

}
