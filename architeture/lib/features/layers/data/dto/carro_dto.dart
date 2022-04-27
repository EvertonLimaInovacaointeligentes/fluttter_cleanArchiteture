

import 'package:architeture/features/layers/domain/entities/carro.entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantiadadePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantiadadePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtdPortas: quantiadadePortas,
          placa: placa,
        );

  toMap() {
    return {
      'placa': this.placa,
      'quantidadeDePortas': this.quantiadadePortas,
      'valorFinal': this.valorFinal,
    };
  }

  static CarroDto fromMap(Map map) {
    return CarroDto(
      placa: map['placa'],
      quantiadadePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
