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

//05º aula do Modulo 03 Dart:entenda a Orientção a Objeto
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita); 
  Fruta fruta02 = Fruta("UVA", 40, "Roxo", "Doce", 20);

  print(fruta01.nome);

  fruta01.estaMadura(30);
  fruta02.estaMadura(60);
  
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

//03º aula do Modulo 03 Dart:entenda a Orientção a Objeto
class Fruta{
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

//05º aula do Modulo 03 Dart:entenda a Orientção a Objeto
  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  estaMadura(int diasParaMadura){
//07º aula do Modulo 03 Dart:entenda a Orientção a Objeto
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ele está madura? $isMadura");
  }
}

//02º aula do Modulo 04 Dart:entenda a Orientção a Objeto
class Alimento{
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

}

class Legumes{
  String nome;
  double peso;
  String cor;
  bool isPrecisaCozinhar;

  Legumes(this.nome, this.peso, this.cor, this.isPrecisaCozinhar);
}

class Citricas{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citricas(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.nivelAzedo);

}

class Nozes{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.porcentagemOleoNatural);
  
}