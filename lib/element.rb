class Element
  attr_accessor :content, :prev

  def initialize(content, prev)
    @content = content
    @prev = prev
  end
end
