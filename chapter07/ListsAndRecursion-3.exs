# DOES NOT WORK YET ¯\_(ツ)_/¯
defmodule MyList do
  def caesar(list, n) do
    to_string _addchars(list, n)
  end

  defp _addchars([ head | [] ], n), do: [ _increment(head, n) | [] ]
  defp _addchars([ head | tail ], n) do
    [ _increment(head, n) | _addchars(tail, n) ]
  end

  defp _increment(char, n) do
    rem(char + n, 122) + 97
  end
end
