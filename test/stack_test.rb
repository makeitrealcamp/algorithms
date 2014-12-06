require 'test_helper'

class StackTest < MiniTest::Test

  def setup
    @stack = Stack.new
  end

  def test_method_push_exists
    assert_respond_to @stack, :push
  end

  def test_method_pop_exists
    assert_respond_to @stack, :pop
  end

  def test_push_pop_with_one_item
    @stack.push(2)
    result = @stack.pop

    assert_equal 2, result
  end

end
