defmodule Genie do
  def guess(actual, low..high) do
    possible = div(high - low, 2) + low
    IO.puts "Is it #{possible}?"

    make_guess(actual, possible, low..high)
  end

  defp make_guess(actual, possible, _.._) when actual == possible do
    IO.puts possible
  end

  defp make_guess(actual, possible, _..high) when actual > possible do
    new_low = possible + 1
    guess(actual, new_low..high)
  end

  defp make_guess(actual, possible, low.._) when actual < possible do
    new_high = possible - 1
    guess(actual, low..new_high)
  end
end
