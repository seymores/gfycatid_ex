defmodule GfycatidExTest do
  use ExUnit.Case
  doctest GfycatidEx

  test "get Adjectives.list" do
    assert GfycatidEx.Adjectives.list() |> Enum.count() == 1502
  end

  test "get Animals.list" do
    assert GfycatidEx.Animals.list() |> Enum.count() == 1750
  end
  
  test "Adjectives.get()" do
    assert !is_nil(GfycatidEx.Adjectives.get(0))
    assert GfycatidEx.Adjectives.get(200) != ""
  end

  test "Animals.get()" do
    assert !is_nil(GfycatidEx.Animals.get(10))
    assert GfycatidEx.Animals.get(100) != ""
  end

  test "Adjectives.get_random()" do
    assert !is_nil(GfycatidEx.Adjectives.get_random())
    assert GfycatidEx.Adjectives.get_random() != ""
  end

  test "Animals.get_random()" do
    assert !is_nil(GfycatidEx.Animals.get_random())
    assert GfycatidEx.Animals.get_random() != ""
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
