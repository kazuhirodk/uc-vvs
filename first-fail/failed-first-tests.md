# FIRST principles failed

## FAST FAIL

```ruby
class CoolFunctions do
  def softFunction()
    sleep(1)
    return true
  end

  def heavyFunction()
    sleep(9000)
    return false
  end
end
```

```ruby
describe CoolFunctions do
  describe 'my functions' do
    it 'must execute correctly my functions' do
      first_result = CoolFunctions.softFunction()
      second_result = CoolFunctions.heavyFunction()

      expect(first_result).to be_truthy
      expect(second_result).to be_falsey
    end
  end
end
```

Acima, simulando uma função rápida e uma mais pesada.
Estou rodando ambos no mesmo suite de testes, fazendo com que um teste independente e rápido demore pra ser executado desnecessariamente.

- - - - - - - - - - - - - - - -

## INDEPENDENT FAIL

```ruby
describe ArrayOperators do
  test_array = [1, 2, 3, 4]

  describe '#arrayCounter' do
    it 'must count array size' do
      expect(arrayCounter(test_array)).to eq(4)
    end
  end

  describe '#arraySlicer' do
    it 'must slice array in half' do
      test_array = arraySlicer(test_array)

      expect(test_array).to eq([1, 2])
      expect(arrayCounter(test_array)).to eq(2)
    end
  end
end
```

O teste acima testa duas funções: uma pra contar os elementos do array e outra para cortar o array pela metade.
Se eu rodar o teste do arraySlicer antes, o primeiro teste falhará, ou seja, são dependentes da sequência.

- - - - - - - - - - - - - - - -

## REPEATABLE FAIL

```ruby
describe PiCalculator do
  it 'must calculate value of PI'do
    result = PiCalculator.calculate() # this function calculate PI with 2 decimal places
    result = await CalculateNumber.calculatePi() # this async function calculate PI with 5 decimal places

    sleep(1000)

    expect(result).to eq(3.14)
  end
end
```

O teste acima verifica se foi calculado PI da forma correta, porém, um é síncrono e outro assíncrono. Se o teste assíncrono terminar antes dos 1000 milisegundos, ele vai dar outro resultado, falhando o teste.
Então este teste é não determinístico

- - - - - - - - - - - - - - - -

## SELF-CHECKING FAIL

```ruby
describe '#isNumber' do
  it 'must return true if param is a number' do
    number = 5

    return (isNumber(5) == true)
  end
end
```

Ao rodar o teste, ele não dará nenhum feedback sobre o resultado aqui, mesmo eu retornando o valor esperado.
Para me dar o feedback, devo usar o expect().to eq() para dar um feedback do espero pelo teste.

- - - - - - - - - - - - - - - -

## TIMELY FAIL

```ruby
  describe 'crazyFunction' do
    it 'must return true, I do not know why' do
      expect(crazyFunction()).to be_truthy
    end
  end
```

Para representar essa falha, escrevi um teste que é consequência de não se escrever um teste antes.
Quando vamos testar depois, pode ser que a implementação esteja tão confusa que você não entenda como funcionam as coisas, e muitas vezes quem implementou já não está mais presente.
