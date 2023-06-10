defmodule ListFilterOddNumbers do
  def call(list), do: count_odd_numbers(list)

  defp count_odd_numbers(list) do
    numbers = convert_string_to_integer(list)
    total_odd_numbers = Enum.count(numbers, fn number -> rem(number, 2) != 0 end)
    "Total odd numbers is: #{total_odd_numbers}"
  end

  defp convert_string_to_integer(list) do
    Enum.flat_map(list, fn num ->
      case Integer.parse(num) do
        {int, _} -> [int]
        :error -> []
      end
    end)
  end
end
