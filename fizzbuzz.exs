fizzbuzz = fn
  (0, 0, _) -> IO.puts "FizzBuzz"
  (0, _, _) -> IO.puts "Fizz"
  (_, 0, _) -> IO.puts "Buzz"
  (_, _, n) -> IO.puts n
end

call_fizzbuzz = fn (n) -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

call_fizzbuzz.(10)
call_fizzbuzz.(11)
call_fizzbuzz.(12)
call_fizzbuzz.(13)
call_fizzbuzz.(14)
call_fizzbuzz.(15)
call_fizzbuzz.(16)
