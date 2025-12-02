// Exercicio 8.4 - Aula 1
// ----------------------------------------------------------------------------
// Crie uma classe Empregado que possuirá os seguintes atributos:
//    Nome (String);
//    Salário (Double).
// Crie uma classe filha de Empregado, a Gerente. Afinal de contas, 
// gerente é um tipo de empregado.
// 
// Na classe “Gerente”, adicione como atributo “departamento”, que deve ser 
// uma String que diga a qual departamento o gerente pertence.
// 
// Lembre de usar o super.init() para inicializar os atributos da classe pai.
// ----------------------------------------------------------------------------

class Empregado {
  var nome:String
  var salario: Double

  init(nome:String, salario:Double) {
    self.nome = nome
    self.salario = salario
  }
}

class Gerente:Empregado {
  var departamento:String
  init(nome:String, salario:Double, departamento:String) {
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }
}

let empregado = Empregado(nome: "Marcos Corazza", salario: 50000.00)
let gerente = Gerente(nome: "Rodrigo", salario: 80000.00, departamento: "Engenharia")

print("\nSaídas:\n-----------------------------------------")
print("Empregado:")
print(" >> Nome:................ \(empregado.nome)")
print(" >> Salário:............. R$ \(empregado.salario)")

print("\nGerente:")
print(" >> Nome:................ \(gerente.nome)")
print(" >> Salário:............. R$ \(gerente.salario)")
print(" >> Departamento:........ \(gerente.departamento)")
print("-----------------------------------------\n")