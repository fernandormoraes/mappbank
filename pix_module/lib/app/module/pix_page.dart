import 'package:common/widgets/carousel_function_widget.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';

class PixPage extends StatelessWidget {
  const PixPage({super.key});

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
                  'Área Pix',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 12),
                  child: Text(
                    'Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
                  ),
                ),
                const Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Row(children: [
                        Expanded(
                          child: CarouselFunctionWidget(
                              onPressed: () =>
                                  Modular.to.pushNamed('transferir_pix/'),
                              title: 'Transferir',
                              icon: Icons.currency_exchange),
                        ),
                        const Expanded(
                          child: CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Copia e Cola',
                              icon: Icons.copy),
                        ),
                        const Expanded(
                          child: CarouselFunctionWidget(
                              onPressed: null,
                              title: 'QR Code',
                              icon: Icons.qr_code),
                        ),
                      ]),
                    ),
                  ),
                ),
                const Text(
                  'Receber',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Row(children: const [
                        Expanded(
                          child: CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Cobrar',
                              icon: Icons.copy),
                        ),
                        Expanded(
                          child: CarouselFunctionWidget(
                              onPressed: null,
                              title: 'Depositar',
                              icon: Icons.qr_code),
                        ),
                        Expanded(
                          child: Opacity(
                            opacity: 0,
                            child: CarouselFunctionWidget(
                                onPressed: null,
                                title: 'Depositar',
                                icon: Icons.qr_code),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
