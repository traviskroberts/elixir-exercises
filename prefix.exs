prefix = fn (str) ->
  fn (other_str) -> IO.puts "#{str} #{other_str}" end
end

mrs = prefix.("Mrs.")
mrs.("Smith")
prefix.("Elixir").("Rocks")
