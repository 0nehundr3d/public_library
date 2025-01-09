require 'rspec'
require './lib/author'

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
end