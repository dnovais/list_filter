require Integer

defmodule ListFilter do
  def call(list) do
    list
    |> Enum.map(fn element -> get_numbers(element) end)
    |> Enum.reject(&is_nil/1)
    |> length()
  end

  defp get_numbers(element) do
    element
    |> parser_element()
    |> parser_number()
    |> get_odd_number()
  end

  defp parser_element(element) when is_number(element), do: element

  defp parser_element(element) do
    element
    |> Integer.parse()
  end

  defp parser_number({number, _}), do: number

  defp parser_number(number) when is_number(number), do: number

  defp parser_number(:error), do: 0

  defp get_odd_number(number) when Integer.is_odd(number), do: number

  defp get_odd_number(_number), do: nil
end
