// Exercicio 6.1 - Aula 1
// ----------------------------------------------------------------------------
// Pense em um aplicativo que faz o cálculo da média de notas de alunos 
// de uma turma. Ainda não podemos produzir um aplicativo, mas vamos usar 
// essa situação para praticar um pouco:
// Escreva uma função que receba um array de notas de um determinado aluno 
// e retorne a média aritmética dessas notas.
// ----------------------------------------------------------------------------


func calculaMedia(notas:[Double]) -> Double {
  let qtdeNotas:Int = notas.count
  var total:Double = 0.0
  for nota in notas {
    total += nota
  }
  return total/Double(qtdeNotas)
}

let notas:[Double] = [8.3, 7.5, 9.8, 7.9]
print("\nSaídas:\n--------------------------------------------------")
print(" >> Notas: \(notas)")
print(" >> Média das notas: ", terminator:"")
print(calculaMedia(notas: notas))
print("--------------------------------------------------\n")
