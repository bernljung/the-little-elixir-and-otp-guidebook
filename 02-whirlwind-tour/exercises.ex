defmodule WhirlwindTour do

  def sum([head | tail]) do
    head + sum(tail)
  end

  def sum([]), do: 0

  def flatten([]), do: []
  def flatten([[]|tail]), do: flatten(tail)
  def flatten([[head|tail]|tail2]), do: flatten([head|[tail|tail2]])
  def flatten([head|tail]), do: [head|flatten(tail)
