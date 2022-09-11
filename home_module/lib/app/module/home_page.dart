import 'package:flutter/material.dart';
import 'package:home_module/app/module/widgets/carousel_function_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.blue,
            child: SafeArea(
                child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                          child: RawMaterialButton(
                            onPressed: () {},
                            elevation: 0,
                            fillColor: Colors.blue.shade400,
                            shape: const CircleBorder(),
                            child: const Icon(
                              Icons.person,
                              size: 22.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 26.0),
                          child: Text(
                            'Olá, Fernando',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'Conta',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 14,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          'R\$ 72.000,00',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child:
                  ListView(scrollDirection: Axis.horizontal, children: const [
                SizedBox(
                  width: 24,
                ),
                CarouselFunctionWidget(title: 'Área Pix', icon: Icons.pix),
                CarouselFunctionWidget(title: 'Pagar', icon: Icons.qr_code),
                CarouselFunctionWidget(
                    title: 'Transferir', icon: Icons.currency_exchange),
                CarouselFunctionWidget(title: 'Depositar', icon: Icons.savings),
                CarouselFunctionWidget(
                    title: 'Recarga', icon: Icons.smartphone),
                CarouselFunctionWidget(title: 'Doação', icon: Icons.favorite),
                CarouselFunctionWidget(
                    title: 'Investir', icon: Icons.graphic_eq_rounded),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Icon(
                      Icons.credit_card,
                      size: 18,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Meus cartões',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: SizedBox(
              height: 70,
              child: Center(
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  const SizedBox(
                    width: 24,
                  ),
                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Você tem até R\$ 10.000,00\ndisponíveis para empréstimo.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 24),
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Salve amigos da burocracia.\nFaça um convite para o MAppBank',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              height: 0.8,
              thickness: 0.3,
              indent: 1,
              endIndent: 1,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
