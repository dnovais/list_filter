defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "when list is empty" do
      list = []

      response = ListFilter.call(list)

      expected_response = 0

      assert response == expected_response
    end

    test "when list has only numbers" do
      list = [1, 2, 3, 4, 5, 6, 7]

      response = ListFilter.call(list)

      expected_response = 4

      assert response == expected_response
    end

    test "when list has only strings" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      expected_response = 3

      assert response == expected_response
    end
  end
end
