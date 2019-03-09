defmodule TriplexPlugTest do
  use ExUnit.Case
  doctest TriplexPlug

  test "greets the world" do
    assert TriplexPlug.hello() == :world
  end
end
