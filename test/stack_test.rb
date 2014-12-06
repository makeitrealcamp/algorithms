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

end
