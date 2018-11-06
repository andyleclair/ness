defmodule Ness do
  @moduledoc """
  Documentation for Ness.
  """

  defmacro __using__(_opts) do
    quote do
      import Ness.Drawing
      alias Ness.Point
      alias Ness.Plotter
      alias Ness.Paper
    end
  end
end
