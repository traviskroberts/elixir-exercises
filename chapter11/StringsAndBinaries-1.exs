defmodule MyString do
  def is_printable(str) do
    list = to_charlist(str)
    _is_printable(list)
  end

  defp _is_printable([ head | [] ]), do: head > 31 && head < 127
  defp _is_printable([ head | tail ]) do
    if head > 31 && head < 127 do
      _is_printable(tail)
    else
      false
    end
  end
end
