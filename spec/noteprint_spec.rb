require 'noteprint'
require 'notebook'

describe NotePrint do
  test_notebook = Notebook.new
  test_notebook.add_note("Title1", "Body1")
  test_notebook.add_note("Title2", "Body2")

  it 'prints list of note titles, selects correct title to print corresponding body' do
    test_print = NotePrint.new([{"Title1" => "Body1"}, {"Title2" => "Body2"}])
    allow(test_print).to receive(:gets).and_return("2")
    expect{test_print.options}.to output("1: Title1\n2: Title2\nEnter number of note to view\nTitle2\nBody2\n").to_stdout
  end
end
