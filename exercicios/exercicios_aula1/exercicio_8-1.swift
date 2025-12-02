// Exercicio 8.1 - Aula 1
// ----------------------------------------------------------------------------
// Crie uma classe/struct (a seu critério) chamada “Calculadora” que possua 
// dois diferentes números como atributos. Esses números podem ser inteiros 
// ou decimais, à sua escolha, e precisam ser inicializados pelo construtor 
// de acordo com o que foi recebido por parâmetro;
// Produza 4 métodos referentes às operações básicas de cálculo: 
// soma, subtração, divisão e multiplicação;
// Esses métodos não recebem parâmetros, mas eles retornam um valor do tipo 
// inteiro ou decimal (à sua escolha). Os métodos agem em cima das propriedades 
// citadas anteriormente;
// Instancie essa classe/struct com os dois valores em questão e chame 
// todos os métodos citados
// ----------------------------------------------------------------------------

class Calculadora{
  var num1:Double
  var num2:Double

  init(num1:Double, num2:Double) {
    self.num1 = num1
    self.num2 = num2
  }

  func soma() -> Double { return (num1 + num2) }
  func sub() -> Double { return (num1 - num2) }
  func mult() -> Double { return (num1 * num2) }
  func div() -> Double { return (num1/num2) }
}
let n1:Double = 5.0
let n2:Double = 10.00
var calc = Calculadora(num1: n1, num2: n2)
print("\nSaídas: Numeros [ n1 = \(n1) | n2 = \(n2)]\n--------------------------------------------------")
print(" >> Soma: \(calc.soma())")
print(" >> Sub: \(calc.sub())")
print(" >> Mult: \(calc.mult())")
print(" >> Div: \(calc.div())")
print("--------------------------------------------------\n")