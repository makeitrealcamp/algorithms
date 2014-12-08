# LIFO
class Stack
  class EmptyStackError < Exception; end

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

class Element
  attr_accessor :content, :prev

  def initialize(content, prev)
    @content, @prev = content, prev
  end
end
