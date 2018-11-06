defmodule Ness.Point do
  defstruct [:x, :y]
end

defimpl String.Chars, for: Ness.Point do
  def to_string(point) do
    "#{point.x},#{point.y}"
  end
end
