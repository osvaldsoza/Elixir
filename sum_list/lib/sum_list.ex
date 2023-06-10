defmodule SumList do
  def call(list), do: sum(list, 0)

  def call_enum_sum(list), do: Enum.sum(list)

  def call_enum_map(list), do: Enum.map(list, fn el -> el + 1 end)

  defp sum([], acc), do: acc

  # defp sum([], acc) do
  #   acc
  # end

  defp sum([head | tail], acc) do
    acc = acc + head
    sum(tail, acc)
  end
end
