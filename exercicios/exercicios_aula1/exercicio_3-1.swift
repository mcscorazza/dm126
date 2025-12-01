// Exercicio 3.1 - Aula 1
// ----------------------------------------------------------------------------
// Imprima no console apenas os números pares do intervalo de 1 a 10
// ----------------------------------------------------------------------------

print("Numeros pares de 1 a 10: ")
for i in 1...10 {
  if i%2 == 0 {
    print(" - [ \(i) ] ")
  }
}