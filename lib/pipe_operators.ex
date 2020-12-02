defmodule PipeOperators.SkipOnErrorPipe do
  defmacro previous_value ~> function do
    quote do
      unquote(previous_value)
      |> case do
           {:error, _} -> unquote(previous_value)
           _ -> unquote(previous_value) |> unquote(function)
         end
    end
  end
end
