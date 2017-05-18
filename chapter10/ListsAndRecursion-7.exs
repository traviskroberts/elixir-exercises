defmodule MyEnum do
  def prime(num) do
    for n <- Enum.to_list(2..n), is_prime(n), do: n
  end

  def is_prime(num) do
    sqrt = round(:math.sqrt(num))
    if sqrt > num do
      divisors = for x <- 1..sqrt, rem(num, x) == 0, do: x
      length(divisors) > 1
    else
      false
    end
  end
end
