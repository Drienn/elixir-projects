defmodule Ping do
  def start do
    loop()
  end

  def loop do
    receivçe do
      {:pong, from} ->
        IO.puts "ping ->"
        :timer.sleep 500
        send(from, {:ping, self()})
      {:ping, from} ->
        IO.puts "            <- pong"
        :timer.sleep 500
        send(from, {:pong, self()})
    end
    loop()
  end
end


# ping = spawn(Ping, :start, [])
# pong = spawn(Ping, :start, [])
# send(ping, {:pong, pong})
