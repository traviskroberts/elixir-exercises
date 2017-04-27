defmodule MyEnum do
  def primes_upto(num) when num > 2 do
    for n <- Enum.to_list(2..num), is_prime?(n), do: n
  end
  def primes_upto(num) when num < 3, do: []

  def is_prime?(num) do
    sqrt = round(:math.sqrt(num))
    divisors = for x <- 1..sqrt, rem(num, x) == 0, do: x
    length(divisors) == 1
  end
end
