import 'enums.dart';

class Pessoa {
  String nome;
  String cpf;
  DateTime dataDeNascimento;
  int idade = 0;
  Genero generos;
  Humor humor;


  Pessoa(
      {required this.nome,
      required this.cpf,
      required this.dataDeNascimento,
      required this.generos}) {
    _calcularIdade();
  }

  void falar(String fala) {
    print("${this.nome} diz: $fala");
  }

  int _calcularIdade() {
    DateTime hoje = DateTime.now();
    this.idade = hoje.year - this.dataDeNascimento.year;

    if (hoje.month < this.dataDeNascimento.month ||
        (hoje.month == this.dataDeNascimento.month &&
            hoje.day < this.dataDeNascimento.day)) this.idade--;

    return this.idade;
  }

  void maioridade() {
    if (this.idade >= 18) {
      print("${this.nome} tem ${this.idade}, portanto é maior de idade");
    } else {
      print("${this.nome} tem ${this.idade}, portanto é menor de idade");
    }
  }
  void termometroDoHumor(Humor humor){
    switch(humor){
      case Humor.feliz:
      print(" Que bom que esta feliz hoje ${this.nome}");
      break;
      case Humor.triste:
      print("Porque está triste ${this.nome}?");
      break;
      case Humor.ansioso:
      print("${this.nome} você está muito ansioso(a)!");
      break;
      case Humor.cansado:
      print("${this.nome} você parece estar cansado(a) hoje.");
      break;
      default:
      print("${this.nome} não foi reconhecido");
      break;
    }
  }
}
