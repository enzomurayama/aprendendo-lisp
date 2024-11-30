# 🗄️ Arrays
Arrays em Lisp são estruturas de dados multidimensionais que armazenam elementos em posições indexadas. Eles são amplamente utilizados para manipulação de dados quando é necessário acesso rápido e ordenado. Em Lisp, arrays podem ter uma dimensão (vetores) ou múltiplas dimensões, sendo bastante flexíveis e configuráveis.

### Características Importantes
**Dimensões Variadas** <br>
Arrays podem ter qualquer número de dimensões. <br>

**Redimensionamento** <br>
Arrays em Lisp não são redimensionáveis após a criação, mas você pode criar um novo array com base em um existente. <br>

**Tipos de Dados** <br>
Arrays podem armazenar qualquer tipo de dado suportado pela linguagem, incluindo números, strings, listas ou até objetos.

<br>

---
### Criando Arrays em Lisp
Para criar arrays, utiliza-se a função make-array. É possível especificar dimensões, elementos iniciais e outras propriedades. Aqui estão alguns exemplos:

<br>

**Array Unidimensional (Vetor)**

Isso cria um vetor de tamanho 5, com todos os elementos inicializados para 0.
```
(setq meu-vetor (make-array 5 :initial-element 0))
```

<br>

**Array Multidimensional**

Isso cria uma matriz 3x3 com todos os elementos inicializados para 1.
```
(setq meu-array (make-array '(3 3) :initial-element 1))
```

<br>

**Array com Elementos Específicos**

Isso cria uma matriz 2x2 com os valores fornecidos.
```
(setq meu-array (make-array '(2 2) :initial-contents '((1 2) (3 4))))
```

<br>

---
### Acessando Elementos de Arrays
Para acessar ou alterar os elementos de um array, utiliza-se a função **aref**.

<br>

**Acessar Elementos**
```
(aref meu-array 0 1) ; Acessa o elemento na primeira linha e segunda coluna
```

<br>

**Alterar Elementos**
```
(setf (aref meu-array 0 1) 99) ; Define o valor na posição [0,1] como 99
```

<br>

---
### Operações com Arrays
Lisp fornece funções específicas para manipular arrays

<br>

**Dimensões do Array**
```
(array-dimensions meu-array) ; Retorna uma lista das dimensões
```

<br>

**Verificar Tipo**
```
(arrayp meu-array) ; Retorna T se for um array
```

<br>

**Cópia de Arrays**
```
(copy-array meu-array) ; Cria uma cópia do array
```