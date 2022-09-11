class UserEntity {
  final String cpf;
  final String nome;
  final String password;

  UserEntity(this.cpf, this.nome, this.password);

  UserEntity.fromJson(Map<String, dynamic> json)
      : cpf = json['cpf'],
        nome = json['nome'],
        password = json['password'];
}
