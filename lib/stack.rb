class Stack
  attr_reader :head

  def push(item)
    @head = item
  end

  def pop
    @head
  end
end
