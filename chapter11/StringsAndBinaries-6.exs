defmodule MyString do
  def capitalize_sentences(str) do
    String.split(str, ".")
      |> Enum.map(&String.trim/1)
      |> Enum.map(&String.downcase/1)
      |> Enum.map(&String.capitalize/1)
      |> Enum.join(". ")
      |> String.trim
  end
end
