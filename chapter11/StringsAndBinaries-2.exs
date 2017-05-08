defmodule MyString do
  def is_anagram(str1, str2) do
    list1 = to_charlist(str1)
    list2 = to_charlist(str2)

    list1 == Enum.reverse(list2)
  end
end
