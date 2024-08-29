import 'viagem.dart';
import 'transporte.dart';


void main(){

  Viagem viagemMaio = Viagem(locomocao: Transporte.aviao);
  print(viagemMaio.consultarTotalLocaisVisitados); 
  viagemMaio.visitar("Museu");
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 100;
  print(viagemMaio.consultarTotalLocaisVisitados);
}




