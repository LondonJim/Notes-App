require_relative 'noteprint'

class Notebook

  include NotePrint

  attr_reader :note_book

  def initialize
    @note_book = []
  end

  def add_note(title, body)
    @note_book << { title => body }
  end

  def note_print
    @note_book.print_options
  end
end
