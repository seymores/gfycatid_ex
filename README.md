# GfycatidEx

Generates human readable [Gfycat](http://gfycat.com) style URL id in the form of `AdjectiveAdjectiveAnimal`.

Note this project uses a slightly modified Gfycat's asset [adjectives](http://assets.gfycat.com/adjectives) and [animal](http://assets.gfycat.com/animals) word list.

## Usage

```elixir
alias GfycatidEx, as: Gfycat

iex(1)> Gfycat.generate()
"AlienatedGleamingBedbug"

iex(2)> Gfycat.generate(6)
"MildLightyellowWingedGummyAbandonedIndianredIridescentshark"

iex(3)> Gfycat.generate(3, "_")
"Superficial_Intentional_Jumpy_Icelandichorse"

iex(4)> Gfycat.Adjectives.get(1)
"Black"

iex(5)> Gfycat.Animals.get(10)
"Rabbit"

# You can create your own gfycatID with your own index generator
iex(6)> GfycatidEx.Adjectives.get(1) <> GfycatidEx.Adjectives.get(10) <> GfycatidEx.Animals.get(1)
"AbleAcrobaticAardwolf"
```


## Installation

The package can be installed
by adding `gfycatid_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gfycatid_ex, git: "git@github.com:seymores/gfycatid_ex.git"}
  ]
end
```

