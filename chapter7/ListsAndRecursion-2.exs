defmodule MyList do
  def max([ head | []]), do: head
  def max([ head | tail ]) do
    maxtail = max(tail)
    if head > maxtail, do: head, else: maxtail
  end
end
