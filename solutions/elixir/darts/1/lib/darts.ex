defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}) do
    cond do
      Float.pow((Float.pow(x/1, 2) + Float.pow(y/1, 2)), 0.5) <= 1 -> 10
      Float.pow((Float.pow(x/1, 2) + Float.pow(y/1, 2)), 0.5) <= 5 -> 5
      Float.pow((Float.pow(x/1, 2) + Float.pow(y/1, 2)), 0.5) <= 10 -> 1
      true -> 0
    end
  end
end
