defmodule Nees do
  @moduledoc """
  Documentation for Nees.
  """

  defmacro __using__(_opts) do
    quote do
      import Nees.Drawing
      alias Nees.Point
      alias Nees.Plotter
      alias Nees.Paper
    end
  end
end
