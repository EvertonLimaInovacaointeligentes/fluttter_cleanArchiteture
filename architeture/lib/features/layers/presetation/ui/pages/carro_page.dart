
import 'package:architeture/features/layers/presetation/controllers/carro_controller.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class CarroPage extends StatelessWidget {
  CarroPage({Key? key}) : super(key: key);

  var controller = GetIt.I.get<CarroController>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text('Clean Architeture'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Placa do carro: ${controller.carro.placa}'),
                Text('Quantidade de portas: ${controller.carro.qtdPortas}'),
                Text('Valor do carro: ${controller.carro.valor}'),
              ],
            ),
          ),
        ),
    );
      
   
  }
}
