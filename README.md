# Elixir Enum.each and Process.exit Bug

This repository demonstrates an uncommon bug in Elixir related to the use of `Process.exit` within an `Enum.each` loop. The code unexpectedly terminates before processing all elements in the list.

The `bug.exs` file contains the erroneous code.  The `bugSolution.exs` file provides a corrected version demonstrating the proper way to handle potential exceptions or process termination within an `Enum.each` loop using a `try...catch` block.

This issue highlights the importance of careful exception handling when using `Process.exit` or functions that might raise exceptions within enumerable operations.