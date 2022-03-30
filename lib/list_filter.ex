require Integer

defmodule ListFilter do
  def call(list) do
    numberList =
      Enum.flat_map(list, fn item ->
        case Integer.parse(item) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    oddList =
      Enum.flat_map(numberList, fn number ->
        case Integer.is_odd(number) do
          true -> [number]
          false -> []
        end
      end)

    Enum.count(oddList)
  end
end
