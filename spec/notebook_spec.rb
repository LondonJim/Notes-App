require 'notebook'

describe Notebook do

  it "creates a new array to hold notes when a new instance of Notebook class is created" do
    expect(subject.note_book.empty?).to be(true)
  end

  it 'can add notes into the created notebook' do
    subject.add_note("Title1", "Body1")
    subject.add_note("Title2", "Body2")
    expect(subject.note_book).to eq([{"Title1" => "Body1"}, {"Title2" => "Body2"}])
  end

  it 'can use #note_print to access options' do
    expect(subject).to respond_to(:note_print)
  end

  it 'prints list of note titles, selects correct title to print corresponding body to terminal' do
    subject.add_note("Title1", "Body1")
    subject.add_note("Title2", "Body2")
    allow(subject).to receive(:gets).and_return("2")
    expect{subject.note_print}.to output("1: Title1\n2: Title2\nEnter number of note to view\nTitle2\nBody2\n").to_stdout
  end
end
