// Importações dos arquivos que serão utilizados
import 'classes/brinde.dart';
import 'classes/cliente.dart';
import 'classes/enums.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'utils.dart';

/**
 * RECOMENDAÇÕES DA TUTORA
 * 
 * Arquivo de testes e execução do sistema criado.
 * Os testes para o sistema se darão todos através de prints no console.
 * 
 * Abaixo você encontrará o método main, que é o método principal que será executado.
 * 
 * Para executar esse arquivo, digite o seguinte comando no terminal: dart run main.dart
 * Outra alternativa é instalar a extensão Dart no seu VS Code.
 * Isso fará aparecer um botão tipo "play" no canto direito superior. Basta clicar para executar o projeto.
 * 
 * Dentro do método main, vocês encontrarão indicações para criar objetos das classes criadas e executar os métodos criados.
 * Recomenda-se que essas declarações e execuções sejam feitas a medida que vocês forem criando as classes e métodos pedidos,
 * pois isso servirá para testar se o que você fez está funcionando.
 * 
 * Não se prendam apenas aos comentários e recomendações. Façam todos os testes que quiserem fazer.
 * 
 * Existe um método "pularLinha" que foi criado dentro do arquivo utils.
 * Caso queiram, utilizem-no para pular linha entre um bloco de testes e outro,
 * apenas por questões de organização e melhor visualização das saídas.
 * Para executá-lo, basta chamá-lo em qualquer ponto do método main, dessa maneira:
 * pularLinha();
 */

main() {
  /* Declaração de objetos Produto */
  // pularLinha();
  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);
  Produto flora = Produto(
      nome: "Flora Desodorante Colônia 100ml", valor: 119.90, qtdEmEstoque: 8);
  flora.realizarVenda();
  flora.realizarVenda();
  Produto bleu = Produto(
      nome: "Ultra Bleu Desodorante Colônia 100ml",
      valor: 179.90,
      qtdEmEstoque: 7);
  esperar(1);
  bleu.realizarVenda();
  bleu.realizarVenda();

  Produto innamorata = Produto(
      nome: "Innamorata Desodorante Colônia 100ml",
      valor: 122.00,
      qtdEmEstoque: 5);

  Produto romance = Produto(
      nome: "Romance de Verão Desodorante Colônia 75ml ",
      valor: 119.90,
      qtdEmEstoque: 4);

  Produto vanillaVibe = Produto(
      nome: "Vanilla Vibe Desodorante Colônia 90ml ",
      valor: 119.90,
      qtdEmEstoque: 7);

  Produto acquaFresca = Produto(
      nome: "Acqua Fresca Desodorante Colônia 100ml",
      valor: 89.90,
      qtdEmEstoque: 3);

  Produto nativaSpa = Produto(
      nome:
          "Loção Renovadora Desodorante Hidratante Corporal Nativa Spa Lilac 400ml ",
      valor: 65.90,
      qtdEmEstoque: 10);

  Produto floraCorporal = Produto(
      nome: "Creme Hidratante Desodorante Corporal Flora 250g",
      valor: 51.90,
      qtdEmEstoque: 10);

  Produto refilNativaSpa = Produto(
      nome:
          "Refil Loção Renovadora Desodorante Hidratante Corporal Nativa Spa Lilac 350ml",
      valor: 49.90,
      qtdEmEstoque: 15);

  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);
  Cliente joana = Cliente(
      nome: "Joana",
      cpf: "452464545452",
      dataDeNascimento: DateTime.parse("1980-04-12"),
      generos: Genero.feminino,
      humor: Humor.feliz);
  joana.adicionarDinheiro(1500);

  Cliente alice = Cliente(
      nome: "Alice",
      cpf: "121212121212",
      dataDeNascimento: DateTime.parse("2012-12-12"),
      generos: Genero.feminino,
      humor: Humor.triste);
  alice.adicionarDinheiro(200);

  Cliente carmem = Cliente(
      nome: "Carmem",
      cpf: "121212121212",
      dataDeNascimento: DateTime.parse("2012-12-12"),
      generos: Genero.feminino,
      humor: Humor.feliz);

  carmem.adicionarDinheiro(1800);
  esperar(2);
  /* Testes da classe Pessoa */

  // Teste o método falar algumas vezes...
  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?

  Revendedor maria = Revendedor(
      nome: "Maria",
      cpf: "12345179068",
      dataDeNascimento: DateTime.parse("1950-01-02"),
      generos: Genero.feminino,
      humor: Humor.feliz,
      matricula: "101220");

  Revendedor joaquina = Revendedor(
      nome: "Joaquina",
      cpf: "12345179068",
      dataDeNascimento: DateTime.parse("1950-01-02"),
      generos: Genero.feminino,
      humor: Humor.feliz,
      matricula: "101220");

  Brinde brindeBalmLabial = new Brinde(
      nome: "Balm Labial Rosa Rosewater Micro Tint 3,6g",
      pontosNecessarios: 3,
      qntEmEstoque: 2);
  Brinde brindeHidratanteLabial = new Brinde(
      nome: "Hidratante Labial Cuide-se Bem Leite e Mel 6,2g ",
      pontosNecessarios: 2,
      qntEmEstoque: 5);
  Brinde brindeBalmMultifuncional = new Brinde(
      nome: "Balm Multifuncional Marrom Claro Gengibre 3,8g ",
      pontosNecessarios: 1,
      qntEmEstoque: 2);

  joana.falar(
      "oi,tudo bem, tem os seguintes  produtos: \n ${innamorata.nome}, \n${vanillaVibe.nome}, \n${romance.nome}, \n${nativaSpa.nome}, \n${floraCorporal.nome},\n ${refilNativaSpa.nome}?");
  esperar(1);
  maria.falar("tenho sim vou separar para você. Só um momento.");
  esperar(1);
  joana.falar("obrigada");
  esperar(1);
  joana.comprarProduto(innamorata, maria);
  esperar(2);
  joana.comprarProduto(vanillaVibe, maria);
  esperar(2);
  joana.comprarProduto(romance, maria);
  esperar(2);
  joana.comprarProduto(nativaSpa, maria);
  esperar(2);
  joana.comprarProduto(floraCorporal, maria);
  esperar(2);
  joana.comprarProduto(refilNativaSpa, maria);
  esperar(2);
  joana.consultarTotalPontos();
  esperar(2);
  pularLinha();
  joana.falar("quero trocar meus pontos ");
  esperar(2);
  joana.trocarPontosProBrinde(brindeBalmMultifuncional);
  esperar(2);
  joana.trocarPontosProBrinde(brindeBalmLabial);
  joana.trocarPontosProBrinde(brindeHidratanteLabial);
  esperar(2);
  pularLinha();
  joana.verBrindes();
  pularLinha();
  esperar(2);
  joana.verProdutosComprados();
  pularLinha();
  esperar(2);
  joana.verResumo();
  pularLinha();
  esperar(2);
  maria.falar("Obrigado pela compra volte sempre");
  esperar(2);
  maria.termometroDoHumor(maria.humor);
  joana.falar("Até logo");
  maria.verResumo();
  pularLinha();
  esperar(2);
  joana.verBrindes();
  pularLinha();
  esperar(2);
  joana.verResumo();
  pularLinha();
  esperar(2);

  pularLinha();
  esperar(2);
  alice.falar(
      "oi,tudo bem, tem os seguintes  produtos:  \n ${acquaFresca.nome}, \n${romance.nome}, \n${nativaSpa.nome}, \n${floraCorporal.nome},\n ${refilNativaSpa.nome}?");
  joaquina.falar("tenho sim vou separar para você. Só um momento.");
  esperar(2);
  alice.comprarProduto(acquaFresca, joaquina);
  esperar(2);
  alice.comprarProduto(romance, joaquina);
  esperar(2);
  alice.comprarProduto(nativaSpa, joaquina);
  esperar(2);
  alice.comprarProduto(floraCorporal, joaquina);
  esperar(2);
  alice.comprarProduto(refilNativaSpa, joaquina);
  esperar(2);
  alice.termometroDoHumor(alice.humor);
  esperar(2);
  alice.consultarTotalPontos();
  esperar(2);
  alice.trocarPontosProBrinde(brindeBalmMultifuncional);
  esperar(2);
  alice.trocarPontosProBrinde(brindeHidratanteLabial);
  esperar(2);
  pularLinha();
  alice.verBrindes();
  pularLinha();
  esperar(2);
  alice.verResumo();
  alice.consultarTotalPontos();
  pularLinha();
  joaquina.verResumo();
  joaquina.verResumo();
  joaquina.termometroDoHumor(joaquina.humor);

  print(
      "${brindeBalmMultifuncional.nome} possui ${brindeBalmMultifuncional.consultaQtdeEmEstoque()} em estoque");
  print(
      "${brindeHidratanteLabial.nome} possui ${brindeHidratanteLabial.consultaQtdeEmEstoque()} em estoque");
  print(
      "${brindeBalmLabial.nome} possui ${brindeBalmLabial.consultaQtdeEmEstoque()} em estoque");
}
