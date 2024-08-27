
void main(){
  //escolherMeioTransporte(0); 
  escolherMeioTransporteEnum(Transporte.skate);
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
