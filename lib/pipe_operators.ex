defmodule PipeOperators.SkipOnErrorPipe do
  defmacro previous_value ~> function do
    quote do
      unquote(previous_value)
      |> case do
           {:error, error} -> {:error, error}
           result -> result |> unquote(function)
         end
    end
  end
end
