import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SucessoPixPage extends StatelessWidget {
  final String valor;

  const SucessoPixPage({super.key, required this.valor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Modular.to.navigate('/home/'),
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
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: const [
                  Text(
                    'Pronto, enviamos sua transferência',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500)),
                child: Center(
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        valor,
                        style: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                          'Agora mesmo • ${DateFormat('HH:mm').format(DateTime.now())}'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Row(
                          children: List.generate(
                              500 ~/ 10,
                              (index) => Expanded(
                                    child: Container(
                                      color: index % 2 == 0
                                          ? Colors.transparent
                                          : Colors.grey,
                                      height: 1.5,
                                    ),
                                  )),
                        ),
                      ),
                      const Text('Enviado para Fulano de Tal'),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22.0)),
                          onPressed: () {},
                          height: 36,
                          minWidth: 250,
                          elevation: 0,
                          color: Colors.blue,
                          child: const Text(
                            'Enviar comprovante',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
