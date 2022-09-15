import 'package:flutter/material.dart';
import 'package:meus_cartoes_module/app/domain/entities/cartao_entity.dart';

class CartaoWidget extends StatelessWidget {
  final CartaoEntity cartaoEntity;

  const CartaoWidget({super.key, required this.cartaoEntity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          const Icon(Icons.credit_card_rounded, color: Colors.black87),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cartaoEntity.nome,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    '•••• ${cartaoEntity.numero.substring(8)}',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.grey.shade500,
            size: 16,
          )
        ],
      ),
    );
  }
}
