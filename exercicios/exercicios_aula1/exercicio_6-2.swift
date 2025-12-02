// Exercicio 6.2 - Aula 1
// ----------------------------------------------------------------------------
// Construa um algoritmo que receba 10 números inteiros aleatórios e 
// armazene-os. 
// Depois cria automaticamente dois conjuntos, um contendo apenas os números
// pares e outro os números ímpares gerados
// ----------------------------------------------------------------------------


func separaNumeros(numeros:[Int]) -> (pares:[Int], impares:[Int]) {
  var numPares:[Int] = []
  var numImpares:[Int] = []

  for num in numeros {
    if (num%2==0) {
      numPares.append(num)
    } else {
      numImpares.append(num)
    }
  }

  return(numPares,numImpares)
}

var intAleatorio:[Int] = []
for _ in 0...10 {
  intAleatorio.append(Int.random(in:1...100))
}

var (pares, impares) = separaNumeros(numeros:intAleatorio)
print("\nSaídas:\n--------------------------------------------------")
print("  >> Array gerado: \(intAleatorio)")
print("  >> Onde: ")
print("    - Numeros pares: \(pares)")
print("    - Numeros ímpares: \(impares)")
print("--------------------------------------------------\n")
