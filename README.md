# Validador-de-CPF
Avaliação da UC2

Membros:
Guilherme - https://github.com/guizin7894
Carlos - https://github.com/nextages
Samuel - https://github.com/samyreisbento

### Cálculo do Primeiro Dígito

Para validar um CPF, é preciso começar com o calculo do primeiro dígito verificador. Para isso, é preciso separar os 9 primeiros dígitos do CPF (111444777) e multiplicar cada um dos números, da esquerda para a direita por números decrescentes a partir do 10.

Veja a tabela abaixo :

> | Dígito CPF|| Multiplicador|| Resultado |
> | :----: | :----: | :----: | :----: | :----: |
> ||||||
> | `1` | * | `10` | = | `10` |
> | `1` | * | `9` | = | `9` |
> | `1` | * | `8` | = | `8` |
> | `4` | * | `7` | = | `28` |
> | `4` | * | `6` | = | `24` |
> | `4` | * | `5` | = | `20` |
> | `7` | * | `4` | = | `28` |
> | `7` | * | `3` | = | `21` |
> | `7` | * | `2` | = | `14` |
> ||||||

Cada dígito do CPF é multiplicado pelo respectivo número. Depois todos os resultados são somados :

> `10` + `9` + `8` + `28` + `24` + `20` + `28` + `21` + `14` = `162`

A partir do resultado obtido na soma, é realizada 1 divisão por `11`. Esse cálculo irá gerar um quociente e um resto inteiros. Então, dividir `162` por `11` irá gerar um quociente igual a `14` e um resto igual `8`.

A partir desse resultado, é feita a seguinte avaliação :
- se o resto da divisão for `menor que 2`, então o primeiro dígito é igual a `zero`;
- se o resto da divisão for `maior ou igual a 2`, então o dígito verificador é igual a `11 menos o resto da divisão`;

No exemplo, o resto obitido foi oito, logo o primeiro dígito verificador é o onze menor o resto :

> `11 - 8 = 3`

O primeiro dígito verificador é `3`.

---

Desenvolvimento do Projeto

Checklist de Etapas
Cada etapa deverá ser documentada corretamente nas mensagens de commit, usando uma descrição como: etapa 1: mostrando o CPF com escreva ou e1: mostrando o CPF com escreva

Etapa 1: Configuração Inicial
Objetivo
Configurar o ambiente de trabalho no GitHub e realizar a primeira exibição de um CPF no programa.

Tarefas
- [x]Criar uma conta no GitHub (caso ainda não possua).
- [x]Criar um novo repositório no GitHub.

Adicionar:
- [x]Um arquivo README.md, descrevendo o projeto e listando estas etapas.
- [x]Um arquivo de licença (por exemplo, MIT License).
- [x]Um arquivo de código .por.
- [x]Exibir um CPF usando o comando escreva.

  Como usar checkbox no README
  
Copie a seção Desenvolvimento do Projeto direto no seu README.md.
Marque as tarefas concluídas trocando [ ] por [x] à medida que for avançando.

## Etapa 2: Uso de Variáveis

### Objetivo
Armazenar e exibir o CPF formatado utilizando variáveis.

### Tarefas
- [x] Criar **quatro variáveis inteiras**.
- [x] Atribuir valores a essas variáveis (valores fixos).
- [x] Exibir o CPF formatado a partir dessas variáveis.

## Etapa 3: Entrada de Dados

### Objetivo
Permitir a entrada de dados pelo usuário e exibir o CPF formatado.

### Tarefas
- [x] Ler valores digitados para **quatro variáveis inteiras**.
- [x] Exibir o CPF formatado a partir dos valores lidos.

## Etapa 4: Validando Positivos

### Objetivos
Valide para que os números digitados sejam maiores que zero.

### Tarefas
- [x] Ler apenas valores maiores que zero.
- [x] Exibir o CPF formatado a partir dos valores lidos.

## Etapa 5: Entrando Texto

### Objetivos
Receba um CPF completo (com pontos e traço) e mostre ele separado em 2 partes.

### Tarefas
- [x] Coloque o nome dos integrantes estar na parte inicial do README.md.
- [x] Todos os integrantes devem ter suas contas no GitHub.
- [x] Leia um CPF completo do usuário (`XXX.XXX.XXX-YY`).
- [x] Separe os 9 números do CPF dos 2 Dígitos Verificadores em duas variáveis.
- [x] Exiba as duas variáveis separadamente.

## Etapa 6: Validando Entrada

### Objetivos
Receba um CPF completo e valide ele.

### Tarefas
- [x] Leia um CPF completo do usuário.
- [x] Valide para que o CPF esteja nos formatos `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`.

## Etapa 7: Dígito 1

### Objetivos
Calcular e encontrar o Primeiro Dígito Verificador - PDV.

### Tarefas
- [x] Receba um CPF válido do usuário (formatos suportados `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`).
- [x] Se o formato não for válido, encerre o programa.
- [x] Calcule o [Primeiro Dígito Verificador](#cálculo-do-primeiro-dígito) conforme especificado.
- Ao final, mostre :
    - [x] O CPF conforme foi digitado;
    - [x] O Primeiro Dígito Verificador encontrado;
    - [x] O resultado da comparação do PDV encontrado com o PDV do CPF digitado;
- [x] A atualização do código tem que ser feito por um integrante que ainda não realizou um [`Pull Request`](https://docs.github.com/pt/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork);
---

Exemplo antes e depois de completar uma tarefa:

- [] Criar um novo repositório no GitHub <--- antes de realizar a tarefa
- [x] Criar um novo repositório no GitHub <--- após realizar a tarefa

