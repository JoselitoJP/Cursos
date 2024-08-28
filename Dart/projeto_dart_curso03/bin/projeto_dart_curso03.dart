
void main(){

  //escolherMeioTransporte(Transporte.skate);

  Set<String> registrosVigitados = <String>{};
  registrosVigitados = registrarDestino('Rio de Janeiro', registrosVigitados);
  
  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos['São Paulo'] = 1200;
  registrarPrecos['Rio de Janeiro'] = 1500;
  registrarPrecos['São Paulo'] = 1900;
  registrarPrecos['Nova Iorque'] = 'Muito Caro';

  //print(registrarPrecos);

  dynamic meuNumero = 7.1;
  print(meuNumero.runtimeType);
  meuNumero = 'String Qualquer';
  print(meuNumero.runtimeType);

}

Set<String> registrarDestino(String destino, Set<String>banco){
  banco.add(destino);
  return banco;
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

enum Transporte{
  carro,
  bike,
  onibus,
  andando,
  skate,
  aviao,
  patins,
  trem,
}

