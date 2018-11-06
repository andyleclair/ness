defmodule NessTest do
  use ExUnit.Case
  doctest Ness

  test "greets the world" do
    assert Ness.hello() == :world
  end
end
