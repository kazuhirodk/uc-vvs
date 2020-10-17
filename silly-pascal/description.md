# Particionamento por classes de equivalência

## Problema:

Defina classes de equivalência e um conjunto de casos de teste adequado para o critério particionamento por classes de equivalência para o programa com a seguinte descrição:

O programa deve determinar se um identificador é válido ou não em Silly Pascal (uma variante do Pascal). Um identificador válido deve **começar com uma letra e conter apenas letras ou dígitos**. Além disso, **deve ter no mínimo um caractere e no máximo seis caracteres de comprimento**.

Implemente a função isValid(string): boolean que recebe uma string e retorna verdadeiro se a string pode ser um identificador de Silly Pascal e falso caso contrário. Crie os testes para essa função.

## Resolução

### Classes de equivalência

|       Condições de Entrada       |      Válida      |           Inválida           |
|:--------------------------------:|:----------------:|:----------------------------:|
| Tamanho t do identificador       | 1 ≤ t ≤ 6<br>(1) | t > 6 & t < 1<br>(2)     (3) |
| Primeiro caractere c é uma letra |    Sim<br>(4)    |          Não<br>(5)          |
| Só tem caracteres válidos        |    Sim<br>(6)    |          Não<br>(7)          |

### Conjunto de casos de teste

`T = {(a1, Válido), (2B3, Inválido), (Z-12, Inválido), (A1b2C3d, Inválido)}, (vazio, Inválido)`

### Implementação
[Ver código aqui](silly_pascal.rb)
