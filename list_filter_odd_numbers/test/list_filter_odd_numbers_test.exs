defmodule ListFilterOddNumbersTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return count equal 3" do
      str_list = ["1", "3", "6", "43", "banana", "6", "abc"]

      count = ListFilterOddNumbers.call(str_list)

      expected_count = 3

      assert count == expected_count
    end
  end

  describe "call/2" do
    test "should return count equal 0" do
      str_list = ["banana", "abc"]

      count = ListFilterOddNumbers.call(str_list)

      expected_count = 0

      assert count == expected_count
    end
  end

  describe "call/3" do
    test "should return count equal 0 when list is empty" do
      str_list = ["banana", "abc"]

      count = ListFilterOddNumbers.call(str_list)

      expected_count = 0

      assert count == expected_count
    end
  end
end
