defmodule FatorialTest do
  use ExUnit.Case

  describe "op/1" do
    test "should return 120" do
      response = Fatorial.op(5)

      expected_response = 120

      assert response == expected_response
    end
  end

  describe "op/2" do
    test "when 0 should return 1" do
      response = Fatorial.op(0)

      assert response == 1
    end
  end
end
