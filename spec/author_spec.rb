require './lib/book'
require './lib/author'

RSpec.describe Book do
  
  it 'exists' do 
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end 

  it 'has attributes' do 
    expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    expect(charlotte_bronte.books).to eq([])
  end 

  it 'can take create a new book and display authors books' do 
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expect(jane_eyre.class).to eq(Book)
    expect(jane_eyre.title).to eq("Jane Eyre")

    villette = charlotte_bronte.write("Villette", "1853")

    expect(charlotte_bronte.books).to eq(jane_eyre, villette)
  end
end