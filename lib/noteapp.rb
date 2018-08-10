class Notebook
  attr_reader :note_book

  def initialize
    @note_book = []
  end

  def add_note(title, body)
    new_note = Note.new(title, body)
    @note_book << new_note.note
  end

  def printer
    print_out = NotePrint.new(@note_book)
    print_out.options
  end
end

class Note
  attr_reader :note

  def initialize(title, body)
    @note = Hash.new
    @note[title] = body
  end
end

class NotePrint
  def initialize(note_book)
    @note_book = note_book
  end

  def options
    print_list
    puts "Enter number of note to view"
    view_note = gets.chomp.to_i
    print_note(view_note)
  end

  def print_list
    @note_book.each_with_index do |note, index|
    puts "#{index+1}: #{note.keys[0]}"
    end
  end

  def print_note(view_note)
    puts @note_book[view_note-1].keys[0]
    puts @note_book[view_note-1].values[0]
  end
end
