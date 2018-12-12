defmodule Pingpong.Pong do

  def loop do
    receive do
      {sender_pid, "ping"} ->
        IO.puts "got ping..."
        send(sender_pid, {self(), "pong"})
      _ ->
        IO.puts "don't know how to process this message"
    end
    loop()
  end

end
