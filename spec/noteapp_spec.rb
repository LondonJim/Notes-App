require 'noteapp'

describe Note do
  it 'can create a new note hash using 2 args' do
    new_note = Note.new("Title", "Body")
    expect(new_note.note).to eq ({"Title" => "Body"})
  end
end

describe Notebook do

  # setup test instance to use
  test_notebook = Notebook.new
  test_notebook.add_note("Title1", "Body1")
  test_notebook.add_note("Title2", "Body2")

  it "creates a new array to hold notes when a new instance of Notebook class is created" do
    test_empty_notebook = Notebook.new
    expect(test_empty_notebook.note_book.empty?).to be(true)
  end

  it 'can add notes into the created notebook' do
    expect(test_notebook.note_book).to eq([{"Title1" => "Body1"}, {"Title2" => "Body2"}])
  end
end

describe NotePrint do
  test_notebook = Notebook.new
  test_notebook.add_note("Title1", "Body1")
  test_notebook.add_note("Title2", "Body2")

  it 'prints list to terminal' do
    test_print = NotePrint.new([{"Title1" => "Body1"}, {"Title2" => "Body2"}])
    allow(test_print).to receive(:gets).and_return("1\n")
    test_print.options

  end
end
