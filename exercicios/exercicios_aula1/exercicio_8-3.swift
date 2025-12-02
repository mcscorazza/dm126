// Exercicio 8.3 - Aula 1
// ----------------------------------------------------------------------------
// Crie uma classe/struct chamada “Retângulo” que tenha os seguintes atributos:
// – Base;
// – Altura.
// 
// E então, implemente os seguintes métodos:
// – calcularArea() – retorna a área do retângulo, que é calculada por 
// base multiplicado pela altura;
// – calcularPerimetro() – retorna o perímetro do retângulo, que é calculado 
// pela soma de todos os lados.
// ----------------------------------------------------------------------------

struct Retangulo {
  var base:Double
  var altura:Double
  
  func calcularArea() -> Double {
    return self.base * self.altura
  }

  func calcularPerimetro() -> Double {
    return self.base + self.altura
  }
}
let base:Double = 20.0
let altura:Double = 5.0

var ret = Retangulo(base: base, altura: altura)
print("\nDados do Retangulo:\n-----------------------------------")
print(" - Base = \(base)\n - Altura = \(altura)")
print("-----------------------------------")
print(" > Area: \(ret.calcularArea())")
print(" > Perimetro: \(ret.calcularPerimetro())")
print("-----------------------------------\n")
