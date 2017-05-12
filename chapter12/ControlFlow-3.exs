defmodule ControlFlow do
  def ok!({ :ok, data }) do
    IO.inspect data
  end

  def ok!({ _, data }) do
    raise "Error: #{data}"
  end
end
