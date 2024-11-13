# 📖 Aprendendo o básico
Vamos começar dando uma olhada nos elementos básicos da linguagem.

<br>

## 1. Estrutura do programa
Expressões LISP são chamadas de expressões simbólicas ou S-expressões.  São compostas por três objetos válidos: **átomos**, **listas** e **strings**.

Um **átomo** é um número ou sequência de caracteres. Inclui caracteres especiais.
```
    27
    3.14
    -100
    ABC
    abc123
    user#000
```
      
<br>

Uma **lista** é uma sequência de átomos ou listas separadas por espaços e delimitadas por parêntesis. Também podemos criar uma lista vazia, denotada por NIL.
```   
    () 
    (1 2 3 4)
    (joao maria pedro)
    (a (b c d) e f (g))
```

<br>

Uma **string** é um grupo de caracteres entre aspas duplas.
```
    "Hello World!"
    "a b c d e f g"
    "Este é um guia de LISP!"
```
    
<br> 

## 2. Notação prefixa
Agora, entendido os tipos que podemos manipular, precisamos entender que LISP utiliza **notação prefixa**, ou seja, operadores são escritos antes de seus operandos. Por exemplo, a expressão *a * ( b + c )* vai ser escrita como:
```
    (* a (+ b c) )
```

<br>

## 3. Variáveis
Podemos utilizar variáveis globais e locais.

Variáveis **globais** têm valores permanentes em todo o sistema LISP e permanecem em vigor até que um novo valor seja especificado. São declaradas utilizando ***defvar*** e caso já existam, não altera o valor atual.
```
    (defvar <var_name> <value>)
```

<br> 

Variáveis **locais** são definidas dentro de um determinado procedimento e são acessíveis apenas dentro da respectiva função. São declaradas utilizando ***let***.
```
    (let ((var1 val1)  (var2 val2) ... (varn valn)) <s-expressions>)
```

Nesse caso, quando *let* é executado, a cada variável é atribuído o respectivo valor e por último a s-expressão é avaliada.

<br>

## 4. Atribuição de valores
Como não existe declaração de tipos, é possível especificar um valor diretamente para as variáveis (globais e locais), independente se já foi definida ou não. Para isso, utilizamos ***setq***. Vale notar que a variável não precisa existir previamente, ela será criada automaticamente se ainda não existir.
```
    (setq <var_name> <value>)
```

<br>

## 5. Constantes
No LISP, constantes são variáveis ​​que nunca mudam seus valores durante a execução do programa. As constantes são declaradas usando ***defconstant***.
```
    (defconstant <const_name> <value>)
```

Também podemos verificar se uma constante está definida ou não utilizando ***boundp***.
Retorna T em caso positivo, NIL em caso negativo.
```
    (boundp '<const_name>)
```

<br> 

## 6. Entrada e saída de dados
Em Lisp, os métodos de entrada (input) e saída (output) são variados e permitem ler dados do usuário e exibir resultados. Aqui estão alguns dos métodos que estaremos utilizando para manipulação de I/O:

### Entrada (*input*)
***read***: Lê uma expressão (s-expressão) de uma entrada padrão. 
```
    (setq <var_name> (read))
```

<br>

***read-line***: Lê uma linha de texto como uma string. Retorna a linha lida sem avaliá-la.
```
    (setq <my_string> (read-line))
```

<br>

***read-char***: Lê um único caractere da entrada.
```
    (setq <my_char> (read-char))
```

<br>

### Saída (*output*)
***print***: Imprime uma expressão com uma nova linha.
```
    (print "Hello, World!") 
```

<br>

***write:*** Escreve um valor em uma forma legível para Lisp. Maior controle sobre a formatação e não inclui nova linha automaticamente.
```
    (write "Hello, Lisp!")
```

<br>

***format***: Uma função poderosa para formatação de saída. **t** como primeiro argumento indica que a saída é para o console. 

**[ ~A ]** Exibe qualquer valor de maneira legível para humanos.

**[ ~S ]** Exibe qualquer valor de maneira legível para Lisp (como com write)

**[ ~D ]** Exibe números inteiros na base decimal.

**[ ~F ]** Exibe números de ponto flutuante com formato fixo.

**[ ~C ]** Exibe um caractere.

**[ ~% ]** Insere uma nova linha.

```
    (format t "Hello, ~A!" "World") ;; Hello, World!
```

<br>

***terpri***: Insere uma nova linha (similar a ~% em format).
```
    (print "Hello, World!") 
    (terpri) ; Insere nova linha
```

<br>

Lembrando que estes são apenas alguns métodos de entrada e saída, existem muitos outros, mas que não estaremos utilizando aqui.

<br>

## 7. Comentários
Em Lisp, você pode inserir comentários de algumas maneiras:

**Comentário de Linha Única**
Para comentários em uma única linha, use o **`ponto e vírgula ( ; )`**. Qualquer texto após o ponto e vírgula será ignorado pelo interpretador até o final da linha.

**Comentário de Bloco**
Para comentários que abrangem várias linhas, você pode usar **`#|` e `|#`** para delimitar o início e o fim do bloco de comentários.
