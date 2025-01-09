```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  try
    if x == 3 do
      Process.exit(self(), :normal)  #Simulate early termination
    end
    IO.puts(x)
  catch
    :exit, reason ->
      IO.puts("Process exited with reason: #{inspect(reason)}")
  end
end)
```