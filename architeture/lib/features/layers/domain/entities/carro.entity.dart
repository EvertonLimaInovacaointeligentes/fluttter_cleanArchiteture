class CarroEntity {
  final String placa;
  final double valor;
  final int qtdPortas;

  CarroEntity({required this.placa, required this.valor, required this.qtdPortas});

  double get valorReal {
    return valor * qtdPortas;
  }
  setLogica(){
    if(this.valorReal > 10000.00){
      valor *2;
    }
  }
}
