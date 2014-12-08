# LIFO

class EmptyStackError < Exception; end

class Stack
  attr_reader :last

  def push(item)
    current = Element.new(item, @last)
    @last = current
  end

  def pop
    validate_empty_stack!

    element, @last = @last, @last.prev
    element.content
  end

  private

  def validate_empty_stack!
    raise EmptyStackError unless @last
  end
end
