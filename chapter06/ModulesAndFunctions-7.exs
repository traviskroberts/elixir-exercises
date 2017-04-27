# Convert a float to a string with two decimal places (Erlang)
:io_lib.format("~.2f", [12.34567])

# Get the value ofn an operating-system environment variable (Elixir)
System.get_env("PATH")

# Return the extension component of a file name (Elixir)
Path.extname("dave/test.exs")

# Return the process's current working directory (Elixir)
File.cwd()

# Convert a string containing JSON into Elixir data structures
# https://hex.pm/packages/json

# Execute a command in your operating system's shell
System.cmd("ps", ["aux"])
