// Exercicio 2.1 - Aula 1
// ----------------------------------------------------------------------------
// Crie um programa que leia a idade do usuário e informe se ele pertence 
// a uma das categorias:
// - 0 a 13, criança
// - 13 a 18, adolescente
// - 18 em diante, adulto
// ----------------------------------------------------------------------------

print("Entre com a idade: ", terminator: "")
let idade: Int = Int(readLine()!)!

print("Idade: \(idade) -> ", terminator:"")

switch idade {
  case 0...12: print("Criança")
  case 13...17: print("Adolecente")
  case _ where (idade>=18): print("Adulto")
  default: print("Idade inválida!!!")
}