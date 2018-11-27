defmodule NeesTest do
  use ExUnit.Case
  doctest Nees

  test "greets the world" do
    assert Nees.hello() == :world
  end
end
