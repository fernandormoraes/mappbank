import 'package:common_dependencies/common_dependencies.dart';
import 'package:extended_masked_text/extended_masked_text.dart';
import 'package:flutter/material.dart';

class TransferirPixPage extends StatefulWidget {
  const TransferirPixPage({super.key});

  @override
  State<TransferirPixPage> createState() => TransferirPixPageState();
}

class TransferirPixPageState extends State<TransferirPixPage> {
  bool valorInformado = false;

  void changeValue(double value) {
    if (value != 0 && !valorInformado) {
      setState(() {
        valorInformado = !valorInformado;
      });
    } else if (value == 0 && valorInformado) {
      setState(() {
        valorInformado = !valorInformado;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final controller =
        MoneyMaskedTextController(leftSymbol: 'R\$ ', initialValue: 0);

    return SafeArea(
      child: Scaffold(
        floatingActionButton: IconButton(
            color: Colors.grey,
            iconSize: 50,
            onPressed: () {
              Modular.to.pushNamed('/area_pix/destino_pix/',
                  arguments: controller.text);
            },
            icon: Icon(
              Icons.arrow_circle_right,
              color: valorInformado ? Colors.blue : Colors.grey.shade200,
            )),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Modular.to.pop(),
                    icon: const Icon(Icons.close),
                    color: Colors.grey.shade500,
                  ),
                  const Spacer(),
                  Icon(
                    Icons.help_outline_outlined,
                    color: Colors.grey.shade500,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Qual é o valor da transferência?',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 24),
                    child: Row(
                      children: const [
                        Text(
                          'Saldo disponível em conta ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'R\$ 72.000,00',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    onChanged: (String valor) {
                      changeValue(controller.numberValue);
                    },
                    cursorColor: Colors.grey,
                    controller: controller,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                    decoration: const InputDecoration(
                        focusColor: Colors.grey,
                        hoverColor: Colors.grey,
                        fillColor: Colors.grey,
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey))),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
