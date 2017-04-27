defmodule MyEnum do
  def all?([ tail | [] ], func), do: func.(tail)
  def all?([ head | tail ], func) do
    func.(head) && all?(tail, func)
  end

  def each([ tail | [] ], func), do: func.(tail)
  def each([ head | tail ], func) do
    func.(head)
    each(tail, func)
  end

  def filter([ head | [] ], func) do
    if func.(head) do
      [ head | [] ]
    else
      []
    end
  end

  def filter([ head | tail ], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end

  # not quite working yet…
  def split(list, count) when is_list(list) do
    _split(list, count, [])
  end
  defp _split([ head | tail ], count, acc) do
    case length(acc) == count do
      true -> { Enum.reverse([ head | acc ]), tail }
      false -> _split(tail, count - 1, [ head | acc ])
    end
  end
  defp _split([], _count, acc), do: { Enum.reverse(acc), [] }

  def take([ head | [] ], count) when count >= 1, do: [ head | [] ]
  def take([ _head | [] ], count) when count < 1, do: []
  def take([ _head | _tail ], count) when count == 0, do: []
  def take([ head | tail ], count), do: [ head | take(tail, count - 1) ]
end
