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

  def test_push_with_multiple_items
    @stack.push(4)
    @stack.push(8)
    @stack.push(12)

    assert_equal 12, @stack.last.content
    assert_equal 8, @stack.last.prev.content
    assert_equal 4, @stack.last.prev.prev.content
  end

  def test_push_and_top_with_multiple_items
    @stack.push(4)
    @stack.push(8)
    @stack.push(12)

    assert_equal 12, @stack.pop
    assert_equal 8, @stack.pop
    assert_equal 4, @stack.pop
  end

  def test_empty_stack
    assert_raises(EmptyStackError) do
      @stack.pop
    end
  end

end
