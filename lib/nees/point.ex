defmodule Nees.Point do
  defstruct [:x, :y]
end

defimpl String.Chars, for: Nees.Point do
  def to_string(point) do
    "#{point.x},#{point.y}"
  end
end
