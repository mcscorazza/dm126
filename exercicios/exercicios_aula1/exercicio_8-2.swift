// Exercicio 8.2 - Aula 1
// ----------------------------------------------------------------------------
// Crie uma classe/struct chamada “Restaurante” que tenha os seguintes atributos:
// – Nome;
// – Tipo de comida;
// – Número de pedidos (esse sempre será inicializado como 0 no construtor).
// 
// E então, implemente o seguinte método:
// – recebePedido() → esse método acrescenta em 1 o valor do atributo referente 
// ao número de pedidos;
// – calculaTotalPedidos() → supondo que cada pedido tenha um valor fixo de 
// R$35,00, crie um método que calcule e retorne o valor total em pedidos.
// ----------------------------------------------------------------------------

struct Restaurante {
  var nome: String
  var tipoComida: String
  var numPedidos: Int = 0

  mutating func recebePedido() {
    self.numPedidos += 1
    print(" > Pedido recebido! +(R$ 35.00)   # [\(self.numPedidos)]!")
  }

  func calculaTotalPedidos() -> Double {
    return Double(numPedidos) * 35.00
  }
}

var pedido = Restaurante(nome: "Marcos Corazza", tipoComida: "Italiana")
print("\n           Restaurante XPTO:\n----------------------------------------")
print("- Cliente: \(pedido.nome)\n")
pedido.recebePedido()
pedido.recebePedido()
pedido.recebePedido()
print("----------------------------------------")
print("Total:                        R$ \(pedido.calculaTotalPedidos())\n")
