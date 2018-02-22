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
    adjectives = for _ <- 1..adjective_count, do: Adjectives.get_random()
    animal = Animals.get_random()

    (adjectives ++ [animal])
    |> Enum.join(delimiter)
  end

end
