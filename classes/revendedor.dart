import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.3;

  Revendedor(super.nome, super.cpf, super.dataDeNascimento, super.generos,
      this.matricula);

  @override
  void falar(String fala) {
    Genero genero = super.generos;
    switch (genero) {
      case Genero.feminino:
        print("Genero feminino: Revendora ${super.nome} diz: $fala.");
        break;
      case Genero.masculino:
        print("Genero masculino: Revendedor ${super.nome} diz: $fala");
        break;
      case Genero.outro:
        print("genero neutro: Pessoa revendedora ${super.nome} diz: $fala");
        break;
      default:
        print("opção indisponivel");
        break;
    }
  }
  /*● Gênero masculino: “Revendedor João diz: Temos promoções”.
● Gênero feminino: “Revendedora Maria diz: Temos promoções”.
● Gênero neutro: “Pessoa revendedora Cris diz: Temos
promoções”.*/

    void venderProduto(Produto produto) {
      produto.realizarVenda();
      this.produtosVendidos.add(produto);}
}