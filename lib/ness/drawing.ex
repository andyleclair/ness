defmodule Ness.Drawing do
  alias Ness.Point
  alias Ness.Command

  @spec line(Point, Point) :: Command.t()
  def line(from, to) do
    "PU#{from};PD;PA#{to};PU;"
  end

  @spec circle(Point, Number) :: Command.t()
  def circle(center, radius) do
    "PU#{center};CI#{radius};PU;"
  end

  @spec label(Point, String.t()) :: Command.t()
  def label(start, text) do
    "DT$,1;PU#{start};LB#{text}$;PU;"
  end
end
