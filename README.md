# ListFilter: Desafio 02 - Filtragem em listas

## Sobre o desafio

Nesse desafio, você deverá criar um novo projeto com uma função que, dada uma lista de strings que representem números ou não (exemplo `["1", "3", "6", "43", "banana", "6", "abc"]`), filtre todos os elementos numéricos da lista e retorne quantos números ímpares existem nessa lista.

### Executando

Para executar e testar a implementação a partir do terminal, rode `iex -S mix` dentro do diretório raiz do projeto. Em seguida:

```elixir
iex> ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"])
...> 3
```

### Rodando os testes

Para rodar os testes a partir do terminal, rode `mix test` dentro do diretório raiz do projeto.