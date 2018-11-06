defmodule Ness.Sample.Circles do
  @moduledoc ~S"""
  Draws a line of circles. Neat, but sorta boring
  """

  use Ness
  @step 200
  @radius 500

  def main() do
    start = %Point{x: 0, y: Paper.ymax() / 2}
    draw_circles(start)
  end

  def draw_circles(point) do
    case Paper.in_bounds(point) do
      false ->
        :ok

      true ->
        circle(point, @radius) |> Plotter.write()
        draw_circles(%Point{x: point.x + @step, y: point.y})
    end
  end
end
