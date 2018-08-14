require_relative 'noteprint'

class Notebook

  attr_reader :note_book

  def initialize
    @note_book = []
  end

  def add_note(title, body)
    @note_book << { title => body }
  end

  def note_print
    print_list
    puts "Enter number of note to view"
    view_note = gets.chomp.to_i
    print_note(view_note)
  end

  private

  def print_list
    @note_book.each_with_index do |note, index|
    puts "#{index+1}: #{note.keys[0]}"
    end
  end

  def print_note(view_note)
    puts @note_book[view_note - 1].keys
    puts @note_book[view_note - 1].values
  end

end
