class Note
  attr_reader :note

  def initialize(title, body)
    @note = Hash.new
    @note[title] = body
  end
end
