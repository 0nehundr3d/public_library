require 'rspec'
require './lib/book'

describe Book do
    before do
        @book = Book.new({
            author_first_name: "Harper", 
            author_last_name: "Lee", 
            title: "To Kill a Mockingbird", 
            publication_date: "July 11, 1960"
        })
    end

    describe '#initialize' do
        it 'can initialize a book' do
            expect(@book).to be_a(Book)
            expect(@book.title).to eq("To Kill a Mockingbird")
            expect(@book.author).to eq("Harper Lee")
        end
    end

    describe '#publication_year' do
        it 'can return the year it was published' do
            expect(@book.publcation_year).to eq("1960")
        end
    end
end