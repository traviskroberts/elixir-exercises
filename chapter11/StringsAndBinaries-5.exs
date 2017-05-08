defmodule MyString do
  def center_print(word_list) do
    Enum.max_by(word_list, fn(word) -> String.length(word) end)
    |> String.length
    |> print_each(word_list)
  end

  defp print_each(max_len, [ head | [] ]) do
    pad = _get_padding(head, max_len)
    padding = String.duplicate(" ", pad)
    IO.puts "#{padding}#{head}"
  end
  defp print_each(max_len, [ head | tail ]) do
    pad = _get_padding(head, max_len)
    padding = String.duplicate(" ", pad)
    IO.puts "#{padding}#{head}"
    print_each(max_len, tail)
  end

  defp _get_padding(str, max_len) do
    str_len = String.length(str)

    if str_len == max_len do
      0
    else
      div(max_len, str_len)
    end
  end
end
