defmodule Pingpong.Ping do

  def loop do
    receive do
      {sender_pid, "pong"} ->
        IO.puts "got pong..."
        send(sender_pid, {self(), "ping"})
      _ ->
        IO.puts "don't know how to process this message"
    end
    loop()
  end

end
