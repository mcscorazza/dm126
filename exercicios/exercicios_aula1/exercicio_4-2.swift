// Exercicio 4.2 - Aula 1
// ----------------------------------------------------------------------------
// Imagine que você foi ao restaurante com um quantidade “n” de amigos e 
// gastaram ao total um valor x. Faça um programa que contenha uma 
// função que calcule quanto cada pessoa deva pagar.
// A função deve receber dois parâmetros: o valor total da conta e o número 
// total de pessoas que irão dividir a conta;
// Não se esqueça dos 10% do garçom! Faça o cálculo em cima do valor total;
// Retorne quanto cada pessoa deve pagar e exiba esse valor no console, 
// fora da função. 
// ----------------------------------------------------------------------------

func rachaConta(valor: Double, nPessoas: Int) -> Double {
  let valorTotal:Double = valor * 1.1 //10% do garçon
  return (valorTotal / Double(nPessoas))
}

print("\nEntradas:\n---------------------------------------------")
print(" Qual o valor da Conta [R$]: ", terminator: "")
let valor: Double = Double(readLine()!)!
print(" Quantas pessoas na mesa: ", terminator: "")
let nPessoas:Int = Int(readLine()!)!
print("--------------------------------------------")

let valorCada:Double = rachaConta(valor: valor, nPessoas: nPessoas)

print("\nSaídas:\n--------------------------------------------------")
print(" Total da Conta: R$ \(valor)")
print(" Pessoas na mesa: \(nPessoas)")
print(" Valor para cada um R$ \((valorCada*100).rounded()/100) (com 10% do garçon!)")
print("--------------------------------------------------\n")