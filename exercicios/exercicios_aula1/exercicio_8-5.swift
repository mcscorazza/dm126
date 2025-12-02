// Exercicio 8.5 - Aula 1
// ----------------------------------------------------------------------------
// Com base no desafio anterior, crie uma outra classe filha chamada Vendedor. 
// Faça um método chamado percentualComissao, que recebe como parâmetro o 
// número de vendas que o vendedor realizou. Cada vendedor possui uma comissão 
// de 10% sobre cada venda. Essa comissão é adicionada ao salário final. 
// Retorne o valor final que o vendedor irá receber, supondo que cada venda 
// possui um valor de R$50,00.
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

class Vendedor:Empregado {
  override init(nome:String, salario:Double) {
    super.init(nome:nome, salario: salario)
  }

  func percentualComissao(numVendas:Int) -> Double {
    let valorVenda:Double = 50.00
    return Double(numVendas) * valorVenda * 0.10
  }
}


let empregado = Empregado(nome: "Marcos Corazza", salario: 50000.00)
let gerente = Gerente(nome: "Rodrigo", salario: 80000.00, departamento: "Engenharia")
let vendedor = Vendedor(nome: "Michele", salario: 15000.00)
let comissaoVendedor = vendedor.percentualComissao(numVendas:300)

print("\nSaídas:\n-----------------------------------------")
print("Empregado:")
print(" >> Nome:................ \(empregado.nome)")
print(" >> Salário:............. R$ \(empregado.salario)")

print("\nGerente:")
print(" >> Nome:................ \(gerente.nome)")
print(" >> Salário:............. R$ \(gerente.salario)")
print(" >> Departamento:........ \(gerente.departamento)")

print("\nVendedor:")
print(" >> Nome:................ \(vendedor.nome)")
print(" >> Salário Normal:...... R$ \(vendedor.salario)")
print(" >> Comissão:............ R$ \(comissaoVendedor)")
print(" >> Salário TOTAL:....... R$ \(vendedor.salario + comissaoVendedor)")

print("-----------------------------------------\n")