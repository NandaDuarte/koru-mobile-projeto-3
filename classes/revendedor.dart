import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  String matricula;
  List<Produto> _produtosVendidos = [];
  double porcentagemLucro = 0.3;

  Revendedor(
      {required super.nome,
      required super.cpf,
      required super.dataDeNascimento,
      required super.generos,
      required super.humor,
      required this.matricula});

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
    try {
      produto.realizarVenda();
      this._produtosVendidos.add(produto);
    } catch (e) {
      throw ("Saldo Insuficiente");
    }
  }

  double _calcularTotalProdutosVendidos() {
    double total = 0;

    this._produtosVendidos.forEach((produto) {
      total += produto.valor;
    });

    return total;
  }

  double _calcularMediaProdutosVendidos() {
    try {
      return this._calcularTotalProdutosVendidos() /
          this._produtosVendidos.length;
    } catch (e) {
      return 0.0;
    }
  }

  double calcularLucro() {
    try {
      if (_produtosVendidos.length > 0) {
        double resultado = 0;
        this._produtosVendidos.forEach((prd) {
          resultado += prd.valor * this.porcentagemLucro;
        });
        return resultado;
      } else {
        throw Exception();
      }
    } catch (e) {
      return 0;
    }
  }

  void verResumo() {
    double totalVendido =
        _calcularTotalProdutosVendidos(); //calculo total vendido
    double mediaAritmetica =
        _calcularMediaProdutosVendidos(); // calculo media aritmetica
    double lucroObtido = calcularLucro(); //calcular lucro obtido

    //print resumo
    print("Resumo de vendas do revendedor:${super.nome}");
    print("O total vendido foi de ${totalVendido.toStringAsFixed(2)} reais");
    print(
        "A media aritmetica de valor dos produtos vendidos é de ${mediaAritmetica.toStringAsFixed(2)} reais");
    print("o lucro recebido foi de ${lucroObtido.toStringAsFixed(2)} reais");
  }
}
