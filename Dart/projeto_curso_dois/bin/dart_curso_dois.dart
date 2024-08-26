import 'dart:ffi';

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

  Legumes mandioca1 = Legumes('Macaxeira', 1200, 'Marom', true);
  Fruta banana1 = Fruta("Banana", 75, 'Amarela', 'Doce', 12);
  Nozes macadamia1 = Nozes('Macadamia', 2, 'Branco Amarelado', 'Doce', 20, 35);
  Citricas limao1 = Citricas('Limão', 100, 'Verde', 'Azedo', 5, 9);

  mandioca1.printAlimento();
  banana1.printAlimento();
  macadamia1.printAlimento();
  limao1.printAlimento();

  mandioca1.Cozinhar(); 
  //limao1.Cozinhar();|não Funciona
  //mandioca1.fazerSuco();|não Funciona
  limao1.fazerSuco();


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
//04º aula do Modulo 04 Dart:entenda a Orientção a Objeto
//02º aula do Modulo 04 Dart:entenda a Orientção a Objeto
class Alimento{
  String nome;
  double peso;
  String cor;
  Alimento(this.nome, this.peso, this.cor);

  void printAlimento(){
    print('Este(a) $nome pesa $peso gramas é da cor $cor.');

  }

}

//03º aula do Modulo 03 Dart:entenda a Orientção a Objeto
class Fruta extends Alimento{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

//05º aula do Modulo 03 Dart:entenda a Orientção a Objeto
  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}):super(nome, peso, cor);

  estaMadura(int diasParaMadura){
//07º aula do Modulo 03 Dart:entenda a Orientção a Objeto
    isMadura = diasDesdeColheita >= diasParaMadura;
    print("A $nome foi colhida a $diasDesdeColheita dias, e precisa de $diasParaMadura para poder comer. Ele está madura? $isMadura");
  }

  void fazerSuco(){
    print('Você fez um ótimo suco de $nome');
  }
}

class Legumes extends Alimento {

  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar):super(nome, peso, cor);

  void Cozinhar(){
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome está cozinhando!");
    }else{
      print('Nem precisa cozinhar!');
    }
  }
}

class Citricas extends Fruta{
  
  double nivelAzedo;

  Citricas(String nome, double peso, String cor,String sabor,int diasDesdeColheita, this.nivelAzedo)
  :super(nome, peso, cor, sabor,diasDesdeColheita);
  void existeRefri(bool existe){
    if (existe) {
      print('Existe Refrigerante de $nome');
    }else{
      print('Não existe refri de $nome');
    }
  }
}

class Nozes extends Fruta{
  
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor,String sabor,int diasDesdeColheita, this.porcentagemOleoNatural)
  :super(nome, peso, cor, sabor,diasDesdeColheita);


}