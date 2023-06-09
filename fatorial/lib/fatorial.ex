defmodule Fatorial do
  def op(n), do: op(n, 1)

  defp op(0, fator), do: fator

  defp op(n, fator) when n > 0, do: op(n - 1, fator * n)
end
