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

  private
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
