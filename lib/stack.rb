# LIFO
class Stack
  attr_reader :last

  def push(item)
    current = Element.new(item, @last)
    @last = current
  end

  def pop
    @last.content
  end

  private

  def first_element?
    @last.prev.nil?
  end
end
