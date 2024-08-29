import 'transporte.dart';

class Viagem {
  static String codigoTrabalho = 'DJNADS12';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVigitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
  }

  void escolherMeioTransporte(Transporte locomocao){
    switch (locomocao){
      case Transporte.carro:
        print('Vou de CARRO para Aventura!');
        break;
      case Transporte.bike:
        print('Vou de BIKE para Aventura!');
        break;
      case Transporte.onibus:
        print('Vou de BUSÃO para Aventura!');
        break;
      default:
        print('Estou indo para aventura, isso é o que importa!');
        break;
    }
  }

  void visitar(String localVisita){
    registrosVigitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecosVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt){
    if(novaQnt < 10){
    _totalLocaisVisitados = novaQnt;
    }else{
      print('Não é posivel!');
    }
  }
}