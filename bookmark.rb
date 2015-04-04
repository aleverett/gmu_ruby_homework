class Bookmark
  def initialize(url,title)
    @url = url
    @title = title
    attr_reader :last_visited
  end
  def visit!
    last_visited = Time.now
  end
end