defmodule Ness.Sample.Circles3 do
  @moduledoc ~S"""
  Draws some circles in expanding rings
  """

  use Ness

  def main() do
    initial_size = 50
    draw_rings(initial_size)
  end

  def draw_rings(size) do
    if size >= Paper.xmax() || size >= Paper.ymax() do
      :ok
    else
      Paper.center()
      |> circle(size)
      |> Plotter.write()

      new_size = size + :rand.uniform(100) + 50

      draw_rings(new_size)
    end
  end
end
