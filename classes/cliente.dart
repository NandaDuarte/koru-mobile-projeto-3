import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtoComprados = [];

  Cliente(super.nome, super.cpf, super.dataDeNascimento, super.generos,
      [this.dinheiro = 0.0]);

  @override
  void falar(String fala) {
    print("Cliente ${super.nome} diz: $fala");
  }
  void ordenarProdutosComprados(){
    produtoComprados.sort((a, b) => a.nome.compareTo(b.nome));
  }

  void adicionarDinheiro(double valor) {
    this.dinheiro += valor;
    print(
        'Agora a pessoa ${super.nome} possui: ${this.dinheiro.toStringAsFixed(2)} reais.');
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor) {
     try{
      revendedor.venderProduto(produto);
      this.dinheiro -= produto.valor;
      produtoComprados.add(produto);
      print('${super.nome} comprou o produto ${produto.nome} por ${produto.valor.toStringAsFixed(2)} reais.');
     }catch(error){
      print('operação não pode ser concluida,erro:$error');
     }
    } else {
      print(
          '${super.nome} não possui dinheiro suficiente para comprar o produto ${produto.nome}.');
    }
  }

  double calcularTotalGasto(){
    double total = 0.0;
    for(var produto in produtoComprados){
      total += produto.valor;
    }
    return total;
  }

  void verProdutosComprados() {
    try {
      if (produtoComprados.length > 0) {
        String msg = "Produtos comprados por ${super.nome} : \n";
        produtoComprados.forEach((produtos) {
          msg += " ${produtos.nome} - ${produtos.valor.toStringAsFixed(2)}";
        });
        print(msg);
      } else {
        throw ("${super.nome} não comprou produto.");
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
