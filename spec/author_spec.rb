require 'rspec'
require './lib/author'
require './lib/book'

describe Author do
    before do
        @charlotte_bronte = Author.new({
            first_name: "Charlotte", 
            last_name: "Bronte"
        })
    end

    describe '#initalize' do
        it 'exists' do
            expect(@charlotte_bronte).to be_a(Author)
            expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
            expect(@charlotte_bronte.books).to eq([])
        end
    end

    describe '#write' do
        before do
            @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
            @villette = @charlotte_bronte.write("Villette", "1853")
        end
        
        it 'can write a book' do
            expect(@jane_eyre).to be_a(Book)
            expect(@jane_eyre.title).to eq("Jane Eyre")
        end

        it 'adds written books to an array' do
            expect(@charlotte_bronte.books).to eq([@jane_eyre, @villette])
        end
    end
end