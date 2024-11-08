# 📜 Sobre o repositório
Pequeno guia de Lisp criado durante os estudos de Paradigmas de Linguagens de Programação, na UFSCar. Contém uma introdução à linguagem Lisp, com foco na implementação CLISP. 

Ele inclui uma descrição básica da linguagem, exemplos de sintaxe e resolução de alguns exercícios simples. O objetivo é fornecer um guia inicial para aqueles interessados em explorar a linguagem.

<br>

# 🚶‍➡️ Primeiros passos
O CLISP serve como uma implementação da linguagem Common Lisp que permite escrever, interpretar e executar programas nessa linguagem. Para começar, precisamos instalá-lo.
Resumindo:

### Instalação no Linux (Ubuntu/Debian)
```
sudo apt install clisp
```

### Instalação no Windows
1. Baixe o instalador na página de downloads do CLISP no SourceForge.
2. Execute o arquivo .exe baixado e siga as instruções do instalador.


### Instalação no macOS (Homebrew)
```
brew install clisp
```

<br>

Para confirmar que o CLISP foi instalado corretamente, verifique a versão:

```
clisp --version
```

<br>

# 👍 Tudo certo para utilizar
Agora que você já instalou tudo certinho, podemos utilizar diretamente no terminal ou executar arquivos que contêm código Lisp.

### Usando o CLISP no terminal (REPL)
O REPL (Read-Eval-Print Loop) é um ambiente interativo onde você pode escrever e testar código Lisp de forma dinâmica no terminal. Basta digitar *clisp* para iniciar o ambiente interativo.
```
clisp
```

### Executando um arquivo .lisp (ou .txt com código Lisp)
Se você tiver um arquivo com código Lisp, você pode executá-lo no CLISP diretamente a partir do terminal. O arquivo pode ser qualquer arquivo de texto com a extensão .lisp, ou até mesmo .txt (desde que contenha código Lisp).

```
clisp meu_programa.lisp
```
