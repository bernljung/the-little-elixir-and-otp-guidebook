defmodule Pingpong do

  def ping do
    ping_pid = spawn(Pingpong.Ping, :loop, [])
    pong_pid = spawn(Pingpong.Pong, :loop, [])

    send(pong_pid, {ping_pid, "ping"})
  end


  @moduledoc """
  Documentation for Pingpong.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Pingpong.hello
      :world

  """
  def hello do
    :world
  end
end
