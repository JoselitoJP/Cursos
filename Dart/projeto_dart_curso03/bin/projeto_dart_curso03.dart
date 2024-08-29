import 'viagem.dart';
import 'transporte.dart';


void main(){

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  print(viagemMaio.consultarTotalLocaisVisitados); 
}




