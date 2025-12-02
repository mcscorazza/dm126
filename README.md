# DM126
## Desenvolvimento de Aplicativos em Swift para iOS

Este repositório armazena os exercícios práticos e códigos desenvolvidos durante a disciplina **DM126**, focado no aprendizado da linguagem **Swift** e desenvolvimento para o ecossistema Apple.

### 📚 Conteúdo

O repositório está organizado por aulas e exercícios propostos/resolvidos.

### 🚀 Aula 1: Fundamentos da Linguagem Swift

Resumo dos principais tópicos teóricos e práticos abordados no material introdutório da disciplina.

* **Introdução ao Swift:** 
    
* **Variáveis e Constantes:**
    * **`var`**: Variáveis mutáveis.
    * **`let`**: Constantes (valores imutáveis) — o uso é encorajado sempre que possível.
    * **Inferência de Tipo**: O compilador deduz o tipo (`Int`, `String`, etc.) automaticamente, mas a tipagem explícita também é possível.
    * **Interpolação**: Inserção de variáveis em Strings usando `\(variavel)`.

* **Controle de Fluxo:**
    * **Condicionais**: Uso de `if`, `else if`, `else` e Operador Ternário.
    * **Switch**: Estrutura poderosa que suporta intervalos (`Ranges`) e Tuplas, sem necessidade de `break` explícito.
    * **Loops**:
        * `for-in`: Iteração sobre coleções ou intervalos.
        * `while`: Verifica a condição antes de executar.
        * `repeat-while`: Executa pelo menos uma vez antes de verificar (similar ao *do-while*).

* **Funções:**
    * Declaradas com `func`, suportam múltiplos parâmetros, retornos (inclusive Tuplas) e valores padrão.
    * **Inout**: Parâmetros são constantes por padrão; `inout` permite passagem por referência para alterar valores originais.

* **Opcionais (Optionals):**
    * Variáveis que podem conter um valor ou `nil` (ausência de valor).
    * **Tratamento Seguro**:
        * *Forced Unwrapping* (`!`): Arriscado se for nil.
        * *Optional Binding* (`if let`, `guard let`): Desembrulha de forma segura.
        * *Nil Coalescing* (`??`): Define um valor padrão caso seja nil.

* **Coleções:**
    * **Arrays**: Coleções ordenadas de mesmo tipo.
    * **Sets**: Coleções não ordenadas de valores únicos.
    * **Tuplas**: Grupos de valores de tipos diferentes.
    * **Dicionários**: Coleções de chave-valor (`key-value`).

* **Orientação a Objetos:**
    * **Structs (Tipos de Valor)**: Quando atribuídas a uma nova variável, é criada uma cópia. Não possuem herança. Necessitam de `mutating` para alterar propriedades em métodos.
    * **Classes (Tipos de Referência)**: Quando atribuídas, compartilham a mesma instância na memória. Suportam **Herança**, **Polimorfismo** e **Sobrescrita (`override`)**.

### 📱 Aula 2: Introdução ao SwiftUI (Tela de Login)

Primeiro contato com o desenvolvimento de interface gráfica utilizando o framework declarativo **SwiftUI**. O projeto prático consistiu na criação de uma tela de login.

* **Estrutura de Layout:**
    * **`VStack`**: Organização vertical dos elementos (Campos e Botão).
    * **`HStack`**: Introdução aos conceitos de empilhamento horizontal.

* **Componentes de UI:**
    * **`TextField`**: Campo de entrada de texto padrão (ex: Usuário/Email).
    * **`SecureField`**: Campo de entrada seguro para senhas (oculta os caracteres).
    * **`Button`**: Elemento interativo para submissão do formulário.
    * **`Image`**: Exibição de ícones (SFSymbols) e imagens do Assets.

* **Modificadores (Modifiers):**
    * Personalização visual encadeada (ex: `spacing:`, `.frame()`, `.textFieldStyle()`).

---

## ✒️ Autor

**Marcos Corazza**
* LinkedIn: [LinkedIn](https://linkedin.com/in/corazza)
* GitHub: [GitHub](https://github.com/mcscorazza)

---
