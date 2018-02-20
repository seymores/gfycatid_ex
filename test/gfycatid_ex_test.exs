defmodule GfycatidExTest do
  use ExUnit.Case
  doctest GfycatidEx

  test "get Adjectives.list" do
    assert GfycatidEx.Adjectives.list() |> Enum.count() == 1129
  end

  test "get Animals.list" do
    assert GfycatidEx.Animals.list() |> Enum.count() == 224
  end

  test "generate with default params" do
    [adj1, adj2, anim] = GfycatidEx.generate() |> String.split(~r/(?=[A-Z])/, trim: true)
    assert Enum.member?(GfycatidEx.Adjectives.list(), adj1)
    assert Enum.member?(GfycatidEx.Adjectives.list(), adj2)
    assert Enum.member?(GfycatidEx.Animals.list(), anim)
  end

  test "generate with multiple adjectives" do
    assert GfycatidEx.generate(3, "_") |> String.split("_") |> Enum.count() == 4
  end

  test "generate with delimeter" do
    assert GfycatidEx.generate(2, "_") |> String.contains?("_")
  end
end
