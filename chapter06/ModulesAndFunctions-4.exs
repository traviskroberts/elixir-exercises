defmodule Sum do
  def of(0) do
    0
  end

  def of(n) when n > 0 do
    n + of(n - 1)
  end

  def of(n) when n < 0 do
    IO.puts "Argument must be a positive integer!"
  end
end
