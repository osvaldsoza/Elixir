defmodule ListFilterOddNumbers do
  def call(list), do: count_odd_numbers(list)

  defp count_odd_numbers(list) do
    new_list = convert_integer(list)
    Enum.count(new_list, fn number -> rem(number, 2) != 0 end)
  end

  defp convert_integer(list) do
    Enum.flat_map(list, fn num ->
      case Integer.parse(num) do
        {int, _} -> [int]
        :error -> []
      end
    end)
  end
end
