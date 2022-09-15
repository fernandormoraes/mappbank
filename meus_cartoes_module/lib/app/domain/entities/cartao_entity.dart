class CartaoEntity {
  final String numero;
  final int mesVencimento;
  final int anoVencimento;
  final String ccv;
  final String nome;
  final bool fisico;

  CartaoEntity(this.numero, this.mesVencimento, this.anoVencimento, this.ccv,
      this.nome, this.fisico);

  /// Recebe um [Map] em formato JSON e retorna um [CartaoEntity]
  CartaoEntity.fromJson(Map<String, dynamic> json)
      : numero = json['numero'],
        mesVencimento = json['mesVencimento'],
        anoVencimento = json['anoVencimento'],
        ccv = json['ccv'],
        nome = json['nome'],
        fisico = json['fisico'];
}
