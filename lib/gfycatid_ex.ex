defmodule GfycatidEx do
  @moduledoc """
  Documentation for GfycatidEx.
  """

  alias GfycatidEx.{Animals, Adjectives}

  @doc """
  Generate gfycatid.

  ## Examples

      iex> GfycatidEx.generate()
      "YellowRoundHorse"

  """
  def generate(adjective_count \\ 2, delimiter \\ "") do
    max_adjectives = Adjectives.list() |> Enum.count()

    adjectives =
      for _ <- 1..adjective_count,
          do: Enum.at(Adjectives.list(), :rand.uniform(max_adjectives) - 1)

    animal = Enum.at(Animals.list(), :rand.uniform(Enum.count(Animals.list()) - 1))

    (adjectives ++ [animal])
    |> Enum.join(delimiter)
  end
end
