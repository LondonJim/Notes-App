require 'note'
require 'noteprint'

class Notebook
  attr_reader :note_book

  def initialize
    @note_book = []
  end

  def add_note(title, body)
    @note_book << Note.new(title,body).note
  end

  def printer
    NotePrint.new(@note_book).options
  end
end
