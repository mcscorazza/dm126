## 🏆 Trabalho Final: App MovieList

Desenvolvimento de um aplicativo completo de catálogo de filmes, consolidando todos os conhecimentos adquiridos na disciplina. 
O projeto simula uma experiência de streaming (estilo Netflix/Prime Video) com foco em arquitetura de dados e interface imersiva.

* **Autenticação e Segurança:**
    * **Login e Cadastro:** Fluxo completo com tela de login e modal (`.sheet`) para registro de novos usuários.
    * **Criptografia:** Implementação do framework **CryptoKit** para armazenar senhas como Hash (SHA256), garantindo que dados sensíveis não trafeguem em texto puro.
    * **Gerenciamento de Sessão:** Uso do padrão **Singleton** (`UserManager`) para controle centralizado de usuários e validação de credenciais na memória.

* **Interface e Layout (UI/UX):**
    * **Home Screen Imersiva:** Uso de `ZStack` e temas escuros (`.preferredColorScheme(.dark)`).
    * **Carrossel de Destaques:** Implementação de `TabView` paginado com banners, aplicando `LinearGradient` para garantir legibilidade dos textos sobre as imagens.
    * **Navegação Horizontal:** Listas de categorias (Ação, Comédia, Drama) utilizando `ScrollView` horizontal combinada com `LazyHStack` para performance.
    * **Filtragem Dinâmica:** Uso de métodos de alta ordem (`.filter`) para segregar os dados do Mock por gênero automaticamente.

* **Componentização e Estado:**
    * Arquitetura modular dividida em microsserviços visuais (`MovieCard` → `CategoryRow` → `HomeView`).
    * **Custom NavigationBar:** Barra de topo personalizada exibindo dinamicamente o nome do usuário logado e menu de Logout.
    * Uso avançado de **@Binding** para transição de estados entre a tela de Login e a Home (Root View Switching).

#### 📸 Screenshots App MovieList

| Login | Login Error | Modal Sign Up | ContentView | ContentView | Logout |
|:---:|:---:|:---:|:---:|:---:|:---:|
|<img src="/screens/App_MovieList/login.png" height="280">|<img src="/screens/App_MovieList/loginerror.png" height="280">|<img src="/screens/App_MovieList/signup.png" height="280">|<img src="/screens/App_MovieList/contentview01.png" height="280">|<img src="/screens/App_MovieList/contentview02.png" height="280">|<img src="/screens/App_MovieList/logout.png" height="280">|

---

## ✒️ Autor

**Marcos Corazza**
* LinkedIn: [LinkedIn](https://linkedin.com/in/corazza)
* GitHub: [GitHub](https://github.com/mcscorazza)

---
