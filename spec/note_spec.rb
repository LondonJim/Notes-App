require 'note'

describe Note do
  it 'can create a new note hash using 2 args' do
    new_note = Note.new("Title", "Body")
    expect(new_note.note).to eq ({"Title" => "Body"})
  end
end
