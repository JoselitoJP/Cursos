
void main(){
  //07 aula Modulo 01 do curso de Dart:Sintaxe, Coleção, Dinamismo
  //escolherMeioTransporte(0); 
  escolherMeioTransporteEnum(Transporte.carro);
}

void escolherMeioTransporte(int locomocao){
  if (locomocao == 0) {
    print('Vou de CARRO para Aventura!');
  } else if(locomocao == 1){
    print('Vou de BIKE para Aventura!');
  }else{
    print('Vou para a Aventura');
  }
}

void escolherMeioTransporteEnum(Transporte locomocao){
  if (locomocao == Transporte.carro) {
    print('Vou de CARRO para Aventura!');
  } else if(locomocao == Transporte.bike){
    print('Vou de BIKE para Aventura!');
  }else {
    print('Vou para a Aventura');
  }
}


enum Transporte{
  carro,
  bike,
  andando,
  skate,
  aviao,
  patins,
  trem,
}
